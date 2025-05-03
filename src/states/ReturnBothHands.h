#pragma once

#include <mc_control/fsm/State.h>
#include <mc_tasks/TransformTask.h>
// #include <mc_tasks/PostureTask.h>
// #include <mc_tasks/Body6dTask.h>
#include <mc_tasks/lipm_stabilizer/StabilizerTask.h>

struct ReturnBothHands : public mc_control::fsm::State {
	void configure(const mc_rtc::Configuration & config) override {};

	void start(mc_control::fsm::Controller & ctl) override;

	bool run(mc_control::fsm::Controller & ctl) override;

	void teardown(mc_control::fsm::Controller & ctl) override;

private:
	// std::shared_ptr<mc_tasks::TransformTask> leftHandTask_;
	std::shared_ptr<mc_tasks::PostureTask> postureTask_;
	// std::shared_ptr<mc_tasks::Body6dTask> baseTask_;
	std::shared_ptr<mc_tasks::lipm_stabilizer::StabilizerTask> stabilizerTask_;
};
