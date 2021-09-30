require './MyEnumerable.rb'  

class MyList
    attr_accessor :list

    include MyEnumerable

    def initialize(*numbers)
        @list = numbers
    end

    def each
        block_given?   
    end
end

mylist = MyList.new(1,2,3,4)

puts mylist.each
