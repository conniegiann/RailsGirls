def withdraw(amount)
 
 # note val
  note_value = 5

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if amount % note_value != 0 
    return false
  end


  # My empty array
  dollar_bills = []

  # The amount eg $25 divided by the note value 5.
  num_notes = amount / note_value # this will equall 5.

  # get the number of notes, and append the note value which in this case is five to the empty array.
  num_notes.times { dollar_bills << note_value }

  return dollar_bills
  # this will result in [5, 5, 5, 5, 5]

end


# p withdraw(25)
# exit


# my_array = [] # create an empty array and store it in my_array
# my_array << 20 # now my array contains [20]
# my_array << 30 # now my_array contains [20, 30]
# remainder = 13 % 5 # remainder is 3
# remainder.times { my_array << 5 } # now my_array contains [20, 30, 5, 5, 5]




# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'


# THESE TESTS ARE FOR STEP 3.


describe 'atm' do
  [
    [-1, false],
    [0, false],
    [1, false],
    [43, false],
    [20, [5, 5, 5, 5]],
    [35, [5, 5, 5, 5, 5, 5, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end