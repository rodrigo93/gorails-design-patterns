class ContactsController < ApplicationController
  def show
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      redirect_to contact_path, notice: "Your message was sent! Thanks!"
    else
      render action: :show
    end
  end

    private

    def contact_form_params
      params.require(:contact_form).permit(:name, :email, :body, :join_mailing_list)
    end
end
