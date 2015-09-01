class ManmenmeController < ApplicationController
  def create
    manmenme = Manmenme.new(manmenme_params)

    if manmenme.save
      render nothing: true, status: :created
    else
      render nothing: true, status: :server_unavailable
    end
  end

  def manmenme_params
    params.require(:manmenme).permit()
  end
end
