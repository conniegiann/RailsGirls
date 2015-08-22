def withdraw(amount)
 
 # note val
  note_value = 5

  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if amount % note_value != 0 
    return false
  end

  amount / note_value

end


# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'


# THESE TESTS ARE FOR STEP 2.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [1, false],
    [43, false],
    [7, false],
    [5, 1],
    [20, 4],
    [35, 7],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end