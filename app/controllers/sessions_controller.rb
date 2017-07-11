class SessionsController < Devise::SessionsController
  def create
    super
    if resource.save
      current_user.account.orders.push(current_order)
    end
  end
end
