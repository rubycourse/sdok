class DoctorsController < ApplicationController
  def show
    # ignoring the id for demo purposes
    render json: Doctor.first.patients.to_a.to_json
  end
end
