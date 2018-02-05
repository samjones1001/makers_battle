feature 'entering names' do
  it 'allows two players to enter their names' do
    visit('/')
    fill_in 'player_1', with: 'Sam'
    fill_in 'player_2', with: 'Milo'
    click_button 'Play!'
    expect(page).to have_content('Sam vs. Milo')
  end
end
