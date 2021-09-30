module MyEnumerable
    def all?
        array_responses = []
        list.each do |n| 
            array_responses << yield(n)
        end
        response = array_responses.include? false
        puts !response
    end

    def any?
        array_responses = []
        list.each do |n| 
            array_responses << yield(n)
        end
        response = array_responses.include? true
        puts response
    end

    def filter
        array_responses = []
        list.each do |n| 
            if yield(n)
            array_responses << n
            end
        end
        puts array_responses
    end
end
