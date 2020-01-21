# frozen_string_literal: true

class ReservationsController < ApplicationController
  protect_from_forgery except: [:create]

  def index; end

  def create
    byebug
  end

  private

  def reservation_params
    params.require(:reservation).permit(:day, :hour, :description)
  end
end
