class StatesController < ApplicationController
    def index
      @states = State.all
    end

    def show
      cookies.delete :state
      @state = State.find(params[:id])
      cookies[:state_id] = @state.id
  end