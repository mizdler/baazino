module DevelopersHelper
	def devgames
	    @developer_games = current_user.developer.games
	end
end
