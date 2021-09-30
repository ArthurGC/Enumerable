require './MyEnumerable.rb'
  

class MyList
    attr_accessor :list

    include MyEnumerable

    def initialize(*numbers)
        @list = numbers
    end
end

mylist = MyList.new(1,2,3,4)

mylist.each_enu
