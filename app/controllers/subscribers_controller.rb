class SubscribersController < BaseController
  def new
  end

  def update
    token = params[:stripeToken]
    customer = Stripe::Customer.create(
      card: token,
      plan: 'plan_Gxo9iGu8gSzOe9',
      email: current_user.email
    )

    current_user.stripe_customer_id = customer.id
    current_user.stripe_response = customer.subscriptions["data"][0]
    current_user.save

    redirect_to premium_path
  end

  def show
    @subscription = current_user.stripe_response
  end

  def destroy
    @subscription_id = current_user.stripe_response['id']

    begin
      delete_subscription(@subscription_id)
      current_user.stripe_customer_id = nil
      current_user.stripe_response = nil
      current_user.save
    rescue Stripe::StripeError => e
      flash[:error] = e.message
    else
      flash[:notice] = "Your subscription has been cancelled successfully"
    end
    redirect_to root_path
  end

  def delete_subscription(subscription_id)
    Stripe::Subscription.delete(subscription_id)
  end
end
