feature 'attack player 2' do
  scenario 'player one can attack player 2 and get a confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Sam attacked Milo!'
  end
end
