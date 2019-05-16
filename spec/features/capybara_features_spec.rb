feature 'Player Names' do
  scenario 'see player names on screen' do
    visit ('/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Bob & Dave'
  end
end