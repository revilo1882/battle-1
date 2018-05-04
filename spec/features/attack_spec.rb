feature 'attack player' do
  scenario 'get confirmation when attacked' do
    sign_in_and_play
    click_on "Mark's turn to attack"
    expect(page).to have_content('Mark Attacked The Beast')
  end

  scenario 'redirect to win-lose page when a player wins' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    9.times {one_round_of_attacks}
    click_on "Mark's turn to attack"
    expect(page).to have_content('Mark wins!')
  end
end
