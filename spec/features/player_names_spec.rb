feature 'players can fill in names and see on-screen' do
  scenario 'fill in names' do
    sign_in_and_play
    expect(page).to have_content('Mark vs The Beast')
  end
end
