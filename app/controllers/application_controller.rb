class ApplicationController < ActionController::Base
    around_action :set_time_zone
  
    def set_time_zone(&block)
      time_zone = current_user.try(:time_zone) || 'Singapore'
      Time.use_zone(time_zone, &block)
    end
end
