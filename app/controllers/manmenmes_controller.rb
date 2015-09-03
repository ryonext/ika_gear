class ManmenmesController < ApplicationController
  def create
    manmenme = Manmenme.new

    if manmenme.save
      render nothing: true, status: :created
    else
      render nothing: true, status: :server_unavailable
    end
  end

  def index
    render json: { count: Manmenme.count }
  end
end
