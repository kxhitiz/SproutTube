class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?

 protected

 def authorize
    unless admin?
      flash[:alert] = "Unauthorized Access"
      redirect_to home_index_path
      false
    end
 end

 def admin?
   access = false
   if person_signed_in?
      if current_person.name == "admin"
        access = true
      end
   end
   access
 end

end

