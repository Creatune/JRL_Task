#include "MoveLeftHand.h"
#include "../JRLTask.h"
#include <mc_rtc/ConfigurationHelpers.h>

void MoveLeftHand::start(mc_control::fsm::Controller & ctl) {
	auto & robot = ctl.robot();
	const auto & lh = robot.frame("LeftGripper");

	const sva::PTransformd & pose = lh.position();
	const Eigen::Vector3d & pos = pose.translation();
	const Eigen::Quaterniond quat(pose.rotation());

	std::cout << "[MoveLeftHand] Default LeftGripper position:\n";
	std::cout << "  Position: [" << pos.x() << ", " << pos.y() << ", " << pos.z() << "]\n";
	std::cout << "  Orientation (quaternion): ["
		<< quat.w() << ", " << quat.x() << ", "
		<< quat.y() << ", " << quat.z() << "]\n";
	stabilizerTask_ = std::make_shared<mc_tasks::lipm_stabilizer::StabilizerTask>(
			ctl.robots(), ctl.realRobots(), ctl.robot().robotIndex(), 5.0);
	ctl.solver().addTask(stabilizerTask_);


	std::cout << "Available frames:\n";
	for(const auto & f : ctl.robot().frames())
	{
		std::cout << "- " << f << "\n";
	}



	sva::PTransformd targetPose(
			Eigen::Quaterniond(0.0, 0.7, 0.0, 0.7),
			Eigen::Vector3d(0.5, 0.25, 1.1)
			);
	targetPose.rotation() = Eigen::Quaterniond(0, 0.7, 0, 0.7).normalized().toRotationMatrix();
	leftHandTask_ = std::make_shared<mc_tasks::TransformTask>(lh, 5.0, 500.0);
	leftHandTask_->target(targetPose);
	ctl.solver().addTask(leftHandTask_);
}

bool MoveLeftHand::run(mc_control::fsm::Controller & ctl) {
	if(leftHandTask_->eval().norm() < 0.1 && leftHandTask_->speed().norm() < 0.1) {
		output("OK");
		return true;
	} else {
		return false;
	}
}

void MoveLeftHand::teardown(mc_control::fsm::Controller & ctl_)
{
	auto & ctl = static_cast<JRLTask &>(ctl_);

	ctl.solver().removeTask(leftHandTask_);

	// ctl.solver().removeTask(postureTask_);

	ctl.solver().removeTask(stabilizerTask_);

	mc_rtc::log::info("[MoveLeftHand] teardown complete");
}

EXPORT_SINGLE_STATE("MoveLeftHand", MoveLeftHand);
