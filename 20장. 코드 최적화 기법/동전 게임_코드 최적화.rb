def game_winner(number_of_coins)
    if (number_of_coins - 1) % 3 == 0
        return "them"
    else
        return "you"
    end
end