class VenuesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]


    def index
    venues = Venue.all
    render json: venues
    end

    # GET /venues/:id
    def show
    venue = Venue.find_by(id: params[:id])
    if venue
        render json: venue
    else
        render json: { error: "Venue not found" }, status: :not_found
    end
    end
end
