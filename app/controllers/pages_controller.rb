class PagesController < ApplicationController
  def home
  end

  def about
  end

  def projects
  end

  def contact
  end

  def create_contact
    @contact_params = params.permit(:name, :email, :subject, :message)

    if @contact_params[:name].present? && @contact_params[:email].present? && @contact_params[:message].present?
      ContactMailer.submission(@contact_params).deliver_later
      redirect_to contact_path, notice: "Message sent! I'll get back to you soon."
    else
      redirect_to contact_path, alert: "Please fill in all required fields."
    end
  end
end
