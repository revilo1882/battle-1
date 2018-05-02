feature 'players can fill in names and see on-screen' do
  scenario 'fill in names' do
    visit('/')
    fill_in 'p1_name', with: 'Mark'
    fill_in 'p2_name', with: 'The Beast'
    click_on 'submit'
    expect(page).to have_content('Mark vs The Beast')
    # expect(page).to have_content('The Beast')
  end
end
