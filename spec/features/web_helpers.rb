def sign_in_and_play
  visit('/')
  fill_in 'p1_name', with: 'Mark'
  fill_in 'p2_name', with: 'The Beast'
  click_on 'submit'
end

def one_round_of_attacks
  click_on "Mark's turn to attack"
  click_on 'Return'
  click_on "The Beast's turn to attack"
  click_on 'Return'
end
