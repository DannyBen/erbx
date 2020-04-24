((
# Any ruby code can go here
today = Time.now.strftime "%B %d, %Y"
today = "April 24, 2020"   # for consistent testing
srand 101                  # for consistent testing
dice = [rand(6) + 1, rand(6) + 1]
))

This roll of a dice happened on {{ today }}.
(( if dice[0] == dice[1] ))
Congratulations, its a double: {{ dice }}
(( else ))
You rolled {{ dice }}
(( end ))
