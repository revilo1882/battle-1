feature 'Switch turns' do
  scenario 'Switch from player one to player two' do
    sign_in_and_play
    click_on 'Attack'
    click_on 'Return'
    click_on 'Attack'
    expect(page).to have_content('The Beast Attacked Mark')
  end
end
