feature 'entering names' do
  it 'allows two players to enter their names' do
    sign_in_and_play
    expect(page).to have_content('Sam vs. Milo')
  end
end
