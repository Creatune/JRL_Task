#pragma once

#include <mc_control/mc_controller.h>
#include <mc_control/fsm/Controller.h>
#include <mc_tasks/LookAtTask.h>
#include <mc_tasks/TransformTask.h>
#include <mc_control/fsm/Controller.h>
#include "api.h"

struct JRLTask_DLLAPI JRLTask : public mc_control::fsm::Controller
{
	JRLTask(mc_rbdyn::RobotModulePtr rm, double dt, const mc_rtc::Configuration & config);

	bool run() override;

	void reset(const mc_control::ControllerResetData & reset_data) override;
};
