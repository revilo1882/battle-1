feature 'attack reduces health points' do
  scenario "Player 2 health points reduced when attacked" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_on "Mark's turn to attack"
    click_on 'Return'
    expect(page).to have_content('The Beast: 90HP')
  end
end
