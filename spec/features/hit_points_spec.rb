feature 'hit points are visible' do
  scenario 'player 2s hit points are on name screen' do
    sign_in_and_play
    expect(page).to have_content('The Beast: 100HP')
  end
end
