class ParksController < ApplicationController
  def index
    if params[:state]
      @state = params[:state]
      #binding.pry
      @parks = ParkFacade.state_parks(@state)
    end
  end
end
