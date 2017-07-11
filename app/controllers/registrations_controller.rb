class RegistrationsController < Devise::RegistrationsController
  def create
    super

    if resource.save
      resource.account.orders.push(current_order)
      sign_in(resource)
    end
  end
end
