def game_winner(number_of_coins, current_player = "you")
    if number_of_coins <= 0
        return current_player
    end

    if current_player == "you"
        next_player = "them"
    elsif current_player == "them"
        next_player = "you"
    end

    if game_winner(number_of_coins - 1, next_player) == current_player || game_winner(number_of_coins - 2, next_player) == current_player
        return current_player
    else
        return next_player
    end
end