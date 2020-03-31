class Api::V1::ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:name, :email, :cedula, :movie_id)
  end
end
