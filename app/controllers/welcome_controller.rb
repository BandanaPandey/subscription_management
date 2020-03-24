class WelcomeController < BaseController
  before_action :check_user_subsription!

  def index
  end

  private

  def check_user_subsription!
    redirect_to(premium_path) if current_user.stripe_customer_id?
  end
end