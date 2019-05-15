

User Stories:

As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

Rspec Errors after creating first Capybara test:

```
Failure/Error: fill_in :player_1_name, with: 'Lisa'

     Capybara::ElementNotFound:
       Unable to find field :player_1_name that is not disabled
```
```
Failure/Error: fill_in :player_1_name, with: 'Lisa'

     Capybara::ElementNotFound:
       Unable to find field :player_1_name that is not disabled
```
We need to create the form for fillining in player_1_name



As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first