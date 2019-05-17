feature 'Switch players' do

    scenario 'says who\'s turn it is' do
    	sign_in_and_play
      expect(page).to have_content 'Lisa\'s turn'
    end

    scenario 'switch player' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Vlad\s turn'
    end

end
