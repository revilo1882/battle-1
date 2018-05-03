feature 'attack reduces health points' do
  scenario "Player 2 health points reduced when attacked" do
    sign_in_and_play
    click_on 'Attack'
    click_on 'Return'
    expect(page).to have_content('The Beast: 90HP')
  end
end
