class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :date_loaded
  	def date_loaded
  		return Time.now
  	end
  before_filter :set_date
		def set_date
			@date_loaded = Time.now
		end
	before_action :set_date_loaded
		private
		def set_date_loaded
			@date_loaded = Time.now
		end

end
