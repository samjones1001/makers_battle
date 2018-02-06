feature 'game over' do
  scenario 'a game over message is displayed when one player reaches 0hp' do
    sign_in_and_play
    fight_to_near_death
    click_button 'Attack!'
    expect(page).to have_content('Sam wins!')
  end
end
