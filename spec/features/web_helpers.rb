
def select_computer_opponent
  visit '/'
  click_button("computer")
end

def select_human_opponent
  visit '/'
  click_button("human")
end

def computer_and_sign_on
  select_computer_opponent
  fill_in :player_one, with: "Bob"
  click_button 'Register'
end

def human_and_sign_on
  select_human_opponent
  fill_in :player_one, with: "Bob"
  fill_in :player_two, with: "Fred"
  click_button 'Register'
end

def one_player_plays(choice)
  choose(choice)
  click_button('Play')
end

def two_players_play(player_one_choice, player_two_choice)
  choose(player_one_choice)
  click_button('Play')
  choose(player_two_choice)
  click_button('Play')
end