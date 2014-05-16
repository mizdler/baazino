class RegistrationsController < Devise::RegistrationsController

  def create
    super
    Profile.create(:user_id => current_user.id)
  end

end