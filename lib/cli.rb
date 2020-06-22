class CLI 
  
  def into 
    puts "Hello, there! And welcome to a game of tic tac toe. Will you be playing with a partner, or against your computer?"
    puts "For playing with a partner, put Human, for an ai game, put AI, and for a computer game, put comp."
    input = gets.strip 
     if input.downcase == 'human'
            Game.new.play
        elsif input.downcase == 'ai' 
            Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Computer.new("O")).play
        elsif input.downcase == 'comp'
            Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Computer.new("O")).play
        end

    end
  end 