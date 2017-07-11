class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user  http://
    mg_client = Mailgun::Client.new("key-e7d00a1a09400e7f0c3f93d0fd4a79be", "bin.mailgun.net", "5b93ac79", ssl = false)
    # mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => ENV['gmail_username'],
                      :to      => @user.email,
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    mg_client.send_message ENV['domain'], message_params
  end


end
