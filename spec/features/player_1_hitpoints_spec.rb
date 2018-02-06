feature 'player 1 hitpoints' do
  scenario "player 1's hipoints are displayed on the screen" do
    sign_in_and_play
    expect(page).to have_content('Sam: 50hp')
  end
end
