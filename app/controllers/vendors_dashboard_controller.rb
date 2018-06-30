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
    @issues=VendorDispute.where(vendor_id:current_vendor.id)
    
  end
  def show
    @issues=VendorDispute.where(vendor_id:current_vendor.id)
  
    @dispute=VendorDispute.find_by_id(params[:id])
  end
  def chat_view
    @issues=VendorDispute.where(vendor_id:current_vendor.id)


  end
  
end
