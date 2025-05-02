#include "JRLTask_Initial.h"

#include "../JRLTask.h"

void JRLTask_Initial::configure(const mc_rtc::Configuration & config)
{
}

void JRLTask_Initial::start(mc_control::fsm::Controller & ctl_)
{
  auto & ctl = static_cast<JRLTask &>(ctl_);
}

bool JRLTask_Initial::run(mc_control::fsm::Controller & ctl_)
{
  auto & ctl = static_cast<JRLTask &>(ctl_);
  output("OK");
  return true;
}

void JRLTask_Initial::teardown(mc_control::fsm::Controller & ctl_)
{
  auto & ctl = static_cast<JRLTask &>(ctl_);
}

EXPORT_SINGLE_STATE("JRLTask_Initial", JRLTask_Initial)
