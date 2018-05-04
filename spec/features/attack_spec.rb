feature 'attack player' do
  scenario 'get confirmation when attacked' do
    sign_in_and_play
    click_on "Mark's turn to attack"
    expect(page).to have_content('Mark Attacked The Beast')
  end
end
