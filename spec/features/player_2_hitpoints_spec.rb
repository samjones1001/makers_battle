feature 'player 2 hitpoints' do
  scenario "player 2's hitpoints are displayed on the play screen" do
    sign_in_and_play
    expect(page).to have_content('Milo: 50hp')
  end
end
