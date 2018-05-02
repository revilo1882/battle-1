feature 'homepage working' do
  scenario 'displays testing infrastructure working' do
    visit('/')
    expect(page).to have_content('testing infrastructure working')
  end
end
