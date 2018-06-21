class VendorsDashboardController < ApplicationController
  
  def customer_issues
    dispute=VendorDispute.new
    dispute.vendor_id=params[:vendor_id]
    dispute.first_name=params[:first_name]
    dispute.last_name=params[:last_name]
    dispute.order_number=params[:order_number]
    dispute.description=params[:description]
    dispute.save!
  end
  
  def index
    @issues=VendorDispute.all
    
  end
  def show
    @issues=VendorDispute.all
  
    @dispute=VendorDispute.find_by_id(params[:id])
  end
  
end
