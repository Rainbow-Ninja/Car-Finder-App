class BuyerController < ApplicationController
 

  def page
    puts"--------------------car params--------------------------"
    puts params
    puts "-------------------------------------------------------"
    @car = Car.find(params[:car_id]) #get this info from url and rake routes
    # Seller.find(1).profile.user - all info on the first seller
    @seller = Seller.find(params[:seller_id])
  end

  def payment
    # need buyer id - current_user.profile.buyer (look at erd for this)
    # need buyer id - get from car, hence hidden field in form, @car.seller_id
    # need to know what car - params[:car_id]
    @buyer = Buyer.find_by(profile_id: current_user.profile.id)
  
    @car = Car.find(params[:car_id])

    @buyer.cars << @car

    @seller = @car.seller
    @buyer.sellers << @seller

    redirect_to root_path, notice: "Payment made succesfully"
  end
end
