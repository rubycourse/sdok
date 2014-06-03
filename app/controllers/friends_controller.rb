class FriendsController < ApplicationController
  def perfect_strangers
    raise "Didn't pass data" unless params[:name].downcase == "larry"
    render json: { cousin: "Balki" }.to_json
  end
end
