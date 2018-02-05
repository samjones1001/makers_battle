feature 'player 2 hitpoints' do
  scenario "player 2's hitpoints are displayed on the play screen" do
    visit('/')
    fill_in 'player_1', with: 'Sam'
    fill_in 'player_2', with: 'Milo'
    click_button 'Play!'
    expect(page).to have_content('Milo: 50hp')
  end
end
