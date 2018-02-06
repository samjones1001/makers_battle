feature 'switch turns' do
  scenario 'at the start of the game it is player 1s turn' do
    sign_in_and_play
    expect(page).to have_content("Sam's turn")
  end

  scenario 'the game switches to player 2s turn' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Milo's turn")
  end
end
