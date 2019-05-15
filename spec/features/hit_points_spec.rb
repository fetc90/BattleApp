
feature 'Hit Points' do
	scenario 'show player 2\'s hit points' do
		visit('/')
		fill_in :first_player, with: 'Lisa'
    	fill_in :second_player, with: 'Vlad'
    	click_button 'Submit'
		expect(page).to have_content 'Lisa: 60HP'
	end
end