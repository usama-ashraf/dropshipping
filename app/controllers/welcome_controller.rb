class WelcomeController < ApplicationController
  
  def home
  
    if current_vendor.present?
    else
      redirect_to new_vendor_session_path
    end
  
  end

end
