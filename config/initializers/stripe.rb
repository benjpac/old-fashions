Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_FPt0x4wiIxpQdLu05XMsIZGG'],
  :secret_key      => ENV['sk_test_doDBr1UNBS6gsmUKJXWgON3Z']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
