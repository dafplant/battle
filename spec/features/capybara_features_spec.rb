feature 'Player Names' do
  scenario 'see player names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Bob & Dave'
  end

  scenario "show player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content 'HP'
  end

  scenario "click fight button" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Dave'
  end

end
