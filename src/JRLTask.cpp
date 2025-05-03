#include "JRLTask.h"

JRLTask::JRLTask(mc_rbdyn::RobotModulePtr rm, double dt, const mc_rtc::Configuration & config)
	: mc_control::fsm::Controller(rm, dt, config)
{
	addContact({robot().name(), "ground", "LeftFoot", "AllGround"});
	addContact({robot().name(), "ground", "RightFoot", "AllGround"});
	solver().addConstraintSet(contactConstraint());
	solver().addConstraintSet(*dynamicsConstraint);
	solver().addConstraintSet(*kinematicsConstraint);
	solver().addConstraintSet(*selfCollisionConstraint);
	solver().addTask(postureTask);
	mc_rtc::log::success("JRLTask init done ");
}

bool JRLTask::run()
{
	auto & r = robot();
	const auto & headFrame = r.frame("rcamera");
	Eigen::Vector3d targetPos = Eigen::Vector3d::Zero();
	bool foundTarget = false;

	const sva::MotionVecd & leftVel = r.frame("LeftGripper").velocity();
	const sva::MotionVecd & rightVel = r.frame("RightGripper").velocity();
	bool leftMoving = leftVel.linear().norm() >= 0.075;
	bool rightMoving = rightVel.linear().norm() >= 0.075;
	// mc_rtc::log::info("leftvel = {} ({}); rightvel = {} ({})", leftVel.linear().norm(), leftMoving, rightVel.linear().norm(), rightMoving);
	double yaw = 0.0;
	double pitch = 0.0;

	if(!leftMoving && rightMoving) {
		targetPos = r.frame("RightGripper").position().translation();
		foundTarget = true;
	} else if(leftMoving && !rightMoving) {
		targetPos = r.frame("LeftGripper").position().translation();
		foundTarget = true;
	} else {
		yaw = 0.0;
		pitch = 0.0;
	}

	if(foundTarget) {
		Eigen::Vector3d headPos = headFrame.position().translation();
		Eigen::Vector3d handPos = targetPos;
		Eigen::Vector3d relative = handPos - headPos;
		double x = relative.x();
		double y = relative.y();
		double z = relative.z();
		yaw = std::atan2(y, x);
		pitch = std::atan2(-z, x);
	}
	postureTask->target({
			{"NECK_Y", {yaw}},
			{"NECK_P", {pitch}}
			});
	return mc_control::fsm::Controller::run();
}

void JRLTask::reset(const mc_control::ControllerResetData & reset_data)
{
	mc_control::fsm::Controller::reset(reset_data);
}
