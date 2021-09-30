require './MyEnumerable.rb'  

class MyList
    attr_accessor :list

    include MyEnumerable

    def initialize(*numbers)
        @list = numbers
    end

    def each
        if block_given?
            for item in @list
                yield(item)
            end
        end
    end
end

mylist = MyList.new(1,2,3,4)

mylist.each

mylist.all? {|e| e < 5}
mylist.all? {|e| e > 5}

mylist.any? {|e| e == 2}
mylist.any? {|e| e == 5}

mylist.filter {|e| e.even?}
