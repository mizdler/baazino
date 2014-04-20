module GamesHelper

  def top_rates
    Game.all
  end

  def most_downloads
    Game.all
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
