class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def order_recipt (user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: "Here's your receipt for #{order.id}")
  end
end