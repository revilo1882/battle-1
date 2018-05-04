feature 'Switch turns' do
  scenario 'Switch from player one to player two' do
    sign_in_and_play
    click_on "Mark's turn to attack"
    click_on 'Return'
    click_on "The Beast's turn to attack"
    expect(page).to have_content('The Beast Attacked Mark')
  end

  scenario 'starts with player one' do
    sign_in_and_play
    expect($game.attacker.name).to eq ('Mark')
  end
end
