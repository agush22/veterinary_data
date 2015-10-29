class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def require_admin
    unless admin_signed_in?
      flash[:alert] = "You must be admin to access this section"
      redirect_to exit_vet_path
    end
  end

  def require_doctor
    unless doctor_signed_in?
      flash[:alert] = "You must be a doctor to access this section"
      redirect_to exit_vet_path
    end
  end

  def require_receptionist
    unless receptionist_signed_in?
      flash[:alert] = "You must be a receptionist to access this section"
      redirect_to exit_vet_path
    end
  end
end
