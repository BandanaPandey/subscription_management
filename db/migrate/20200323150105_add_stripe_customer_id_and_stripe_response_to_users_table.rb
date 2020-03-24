class AddStripeCustomerIdAndStripeResponseToUsersTable < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :stripe_customer_id, :string
    add_column :users, :stripe_response, :jsonb
  end

  def down
    remove_column :users, :stripe_customer_id
    remove_column :users, :stripe_response
  end
end
