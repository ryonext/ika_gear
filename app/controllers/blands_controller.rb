class BlandsController < ApplicationController
  def show
    bland = Bland.find(params[:id])
    @gears = bland.gears.with_bland_and_power
    @condition = bland.name
    render "gears/index"
  end

  private
    def part_param
      return :head unless params[:part]
      params[:part]
    end
end
