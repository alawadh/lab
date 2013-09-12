class WrongNumberOfPlayersError <  StandardError ; end
class WrongNumberOfGamesError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
    
    m1 = game[0][1].downcase
    m2 = game[1][1].downcase
    
    raise NoSuchStrategyError unless ["r", "p", "s"].include? m1
    raise NoSuchStrategyError unless ["r", "p", "s"].include? m2
    
    if(m1 == "r")
		if(m2 == "s")
			return print(game[0])
		end
		if(m2 == "p")
			return print(game[1])
		end
		return print(game[0])
	end
	
	if(m1 == "p")
		if(m2 == "s")
			return print(game[1])
		end
		if(m2 == "r")
			return print(game[0])
		end
		return print(game[0])
	end
	
	if(m1 == "s")
		if(m2 == "r")
			return print(game[1])
		end
		if(m2 == "p")
			return print(game[0])
		end
		return print(game[0])
	end
	
end

def rps_tournament_winner(tourny)

	n = tourny.length	
	raise WrongNumberOfGamesError unless n > 1
	d = tourny[0]
	end = 0
	i = 0
	while(end == 0) 		
		if(d.length > 1)
			d = d[i]
		end
		if(
			
			rps_game_winner(
		
		
	print n
end

tournament = 
[
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

puts rps_game_winner([["Jack","r"],["Ron","S"]])
puts rps_tournament_winner(tournament)
