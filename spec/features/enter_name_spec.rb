# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Registering name to play the game" do
  scenario 'submit player name' do
    visit '/'
    fill_in :player_name, with: "Bob"
    click_button 'Register'
    expect(page).to have_content 'Bob, are you ready to play?'
  end

  scenario 'submit player name' do
    visit '/'
    fill_in :player_name, with: "Anne"
    click_button 'Register'
    expect(page).to have_content 'Anne, are you ready to play?'
  end
end
