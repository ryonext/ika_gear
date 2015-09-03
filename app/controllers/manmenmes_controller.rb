class ManmenmesController < ApplicationController
  def create
    manmenme = Manmenme.find_or_initialize_by(id: 1)
    manmenme.count += 1

    if manmenme.save
      render nothing: true, status: :created
    else
      render nothing: true, status: :server_unavailable
    end
  end

  def index
    render json: { count: Manmenme.find(1).count }
  end
end
