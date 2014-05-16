class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if(current_user)
      Profile.create(:user_id => current_user.id)
    end
  end

end