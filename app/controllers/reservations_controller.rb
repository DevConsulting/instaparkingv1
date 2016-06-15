class ReservationsController < ApplicationController
    # GET /spaces/
    def new
        @reservation = Reservation.new
    end
    
    def thank_you_page
        @reservation = ''
    end
end
