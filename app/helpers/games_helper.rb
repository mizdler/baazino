module GamesHelper

  def top_rates
    #Game.join(:game_rate).order(:total_rate => :desc).limit(5)
    Game.all
  end

  def most_downloads
    #Game.join(:game_info).order(:downloads_num => :desc).limit(5)
    Game.all
  end

  def new_ones
    Game.order(:created_at => :desc).limit(5)
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
