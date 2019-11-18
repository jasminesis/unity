class ApplicationController < ActionController::Base
    around_action :set_time_zone
  
    def set_time_zone(&block)
      Time.zone = current_user.timezone if current_user
      timezone = current_user.try(:timezone) || 'Singapore'
      Time.use_zone(timezone, &block)
    end
end
