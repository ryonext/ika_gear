class GearsController < ApplicationController
  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.where(part: part_param)
  end

  private
    def part_param
      return :head unless params[:part]
      params[:part]
    end
end
