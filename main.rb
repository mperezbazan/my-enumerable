require './my_enumerable'

class MyList
  def initialize(*item)
    @list = item
  end
  include MyEnumerable
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
