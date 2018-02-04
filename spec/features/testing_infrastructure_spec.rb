feature 'testing infrastructure' do
  scenario 'displays a message on the home page' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
