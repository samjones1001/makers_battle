feature 'attack player 1' do
  scenario 'player two can attack player one and get a confirmation' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Attack!')
    expect(page).to have_content('Milo attacked Sam')
  end

  scenario 'player 1s hitpoints are reduced by 10 when attacked' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Attack!')
    expect(page).to have_content('Sam: 40hp')
  end
end
