feature 'Attacking' do

    scenario 'reduce player hitpoints by 10' do
        sign_in_and_play
        click_button 'Attack'
        #click_link 'OK'
        expect(page).not_to have_content 'Dave: 60HP'
        expect(page).to have_content 'Dave: 50HP'
    end
end
