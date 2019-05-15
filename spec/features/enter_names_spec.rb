# feature 'Testing infrastructure' do 
# 	scenario 'Can run app and check page content' do 
# 		visit('/')
# 		expect(page).to have_content 'Testing infrastructure working!'
# 	end
# end
	
feature 'Enter names' do
    scenario 'submitting names' do
    	visit('/')
    	fill_in :first_player, with: 'Lisa'
    	fill_in :second_player, with: 'Vlad'
    	click_button 'Submit'
    	expect(page).to have_content 'Lisa vs. Vlad'
    end
end
