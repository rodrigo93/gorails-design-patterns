class ContactForm
  include ActiveModel::Model

  attr_accessor :name, :email, :body, :join_mailing_list

  validates :name, :email, :body, presence: true

  def save
    if valid?
      # send email
      #ContactMailer.message(params).deliver_later
      true
    else
      false
    end
  end

  def join_mailing_list
    ActiveRecord::Type::Boolean.new.cast(@join_mailing_list)
  end
end
