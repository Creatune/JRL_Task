#include "ReturnRightHand.h"
#include "../JRLTask.h"
#include <mc_rtc/ConfigurationHelpers.h>

void ReturnRightHand::start(mc_control::fsm::Controller & ctl) {
	stabilizerTask_ = std::make_shared<mc_tasks::lipm_stabilizer::StabilizerTask>(
			ctl.robots(), ctl.realRobots(), ctl.robot().robotIndex(), 5.0);
	ctl.solver().addTask(stabilizerTask_);


	std::cout << "Available frames:\n";
	for(const auto & f : ctl.robot().frames())
	{
		std::cout << "- " << f << "\n";
	}


	const auto & lh = ctl.robot().frame("LeftGripper");
	postureTask_ = std::make_shared<mc_tasks::PostureTask>(ctl.solver(), ctl.robot().robotIndex());
	postureTask_->stiffness(5.0);
	const auto & defaultPosture = ctl.robot().module().stance();
	postureTask_->target(defaultPosture);
	ctl.solver().addTask(postureTask_);
}

bool ReturnRightHand::run(mc_control::fsm::Controller & ctl) {
	if(postureTask_->eval().norm() < 0.2 && postureTask_->speed().norm() < 0.1) {
		output("OK");
		return true;
	} else {
		/*mc_rtc::log::info("[ReturnLeftHand] eval norm: {}, speed norm: {}",
		  postureTask_->eval().norm(), postureTask_->speed().norm());*/
		return false;
	}
}

void ReturnRightHand::teardown(mc_control::fsm::Controller & ctl_)
{
	auto & ctl = static_cast<JRLTask &>(ctl_);

	// ctl.solver().removeTask(leftHandTask_);

	ctl.solver().removeTask(postureTask_);

	ctl.solver().removeTask(stabilizerTask_);

	mc_rtc::log::info("[ReturnRightHand] teardown complete");
}

EXPORT_SINGLE_STATE("ReturnRightHand", ReturnRightHand)
