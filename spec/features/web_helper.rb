def sign_in_and_play
  visit('/')
  fill_in :first_player, with: 'Lisa'
  fill_in :second_player, with: 'Vlad'
  click_button 'Submit'
end