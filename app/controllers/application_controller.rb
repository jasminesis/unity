class ApplicationController < ActionController::Base
    # before_filter :set_time_zone, if: :user_signed_in?

    
    private

    def set_time_zone
      Time.zone = Time.now.zone
    end
end
