class ContactMailer < ApplicationMailer
  def new_mail(contact)
    @contact = contact

    User.all.each do |user|
      mail(to: user.email, subject: "New Contact")
    end
  end
end
