class GearPowersController < ApplicationController
  def show
    power = GearPower.find(params[:id])
    @gears = power.gears.with_bland_and_power
    @condition = power.name
    render "gears/index"
  end
end
