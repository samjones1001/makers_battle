def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Sam'
  fill_in 'player_2', with: 'Milo'
  click_button 'Play!'
end
