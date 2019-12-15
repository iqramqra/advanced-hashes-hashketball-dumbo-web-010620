def game_hash 
  {
  	home: 
  		{team_name: "Brooklyn Nets", 
  		colors: ["Black","White"],
  		players: [
  			{player_name: "Alan Anderson",
  			number: 0, 
  			shoe: 16, 
  			points: 22,
  			reounds: 12,
  			assists: 12,
  			steals: 3,
  			blocks: 1,
  			slam_dunks: 1},

  			{player_name: "Reggie Evans",
  			number: 30, 
  			shoe: 14, 
  			points: 12,
  			reounds: 12,
  			assists: 12,
  			steals: 12,
  			blocks: 12,
  			slam_dunks: 7},

  			{player_name: "Brook Lopez",
  			number: 11, 
  			shoe: 17, 
  			points: 17,
  			reounds: 19,
  			assists: 10,
  			steals: 3,
  			blocks: 1,
  			slam_dunks: 15},

  			{player_name: "Mason Plumlee",
  			number: 1, 
  			shoe: 19, 
  			points: 26,
  			reounds: 11,
  			assists: 6,
  			steals: 3,
  			blocks: 8,
  			slam_dunks: 5},

  			{player_name: "Jason Terry",
  			number: 31, 
  			shoe: 15, 
  			points: 19,
  			reounds: 2,
  			assists: 2,
  			steals: 4,
  			blocks: 11,
  			slam_dunks: 1}
  		]
  		}, 
  	away: 
  		{team_name: "Charlotte Hornets", 
  		colors: ["Turquoise","Purple"],
  		players: 
  		[
  			{player_name: "Jeff Adrien",
  			number: 4, 
  			shoe: 18, 
  			points: 10,
  			reounds: 1,
  			assists: 1,
  			steals: 2,
  			blocks: 7,
  			slam_dunks: 2},

  			{player_name: "Bismack Biyombo",
  			number: 0, 
  			shoe: 16, 
  			points: 12,
  			reounds: 4,
  			assists: 7,
  			steals: 22,
  			blocks: 15,
  			slam_dunks: 10},

  			{player_name: "DeSagna Diop",
  			number: 2, 
  			shoe: 14, 
  			points: 24,
  			reounds: 12,
  			assists: 12,
  			steals: 4,
  			blocks: 5,
  			slam_dunks: 5},

  			{player_name: "Ben Gordon",
  			number: 8, 
  			shoe: 15, 
  			points: 33,
  			reounds: 3,
  			assists: 2,
  			steals: 1,
  			blocks: 1,
  			slam_dunks: 0},

  			{player_name: "Kemba Walker",
  			number: 33, 
  			shoe: 15, 
  			points: 6,
  			reounds: 12,
  			assists: 12,
  			steals: 7,
  			blocks: 5,
  			slam_dunks: 12}
  		]
  		}
  	}
end

def num_points_scored(players_name)
	game_hash.each do |place,team| 
		team.each do |attribute,data|
			if attribute == :players
				data.each do |player| 
					if player[:player_name] == players_name
						return player[:points]
					end 
				end
			end 
		end 
	end 
end

def shoe_size(players_name)
	game_hash.each do |place,team| 
		team.each do |attribute,data|
			if attribute == :players
				data.each do |player| 
					if player[:player_name] == players_name
						return player[:shoe]
					end 
				end
			end 
		end 
	end 
end

def team_colors(teams_name)
  game_hash.each do |place,team|
      if team[:team_name] == teams_name
        return team[:colors]
    end 
  end 
end

def team_names
	game_hash.map do |place,team| 
		team[:team_name]
	end
end 

def player_numbers(team_name)
  game_hash.map do |place,team| 
    team.map do |attribute,value|
    end 
  end
end 

def player_numbers(team_name)
	numbers = []
	game_hash.each do |place,team|
		if team[:team_name] == team_name
			team.each do |attributes,data|
				if attributes == :players
					data.each do |player|  
						numbers.push(player[:number])
					end 
				end
			end 
		end 
	end 
 	numbers
end

def player_stats(player_name)
  game_hash.each do |location, team|
    team.each do |attribute, data|
     if attribute == :players
       data.each do |player, stats|
        if player == player_name
          return stats
        end
       end
      end
    end
  end
end




