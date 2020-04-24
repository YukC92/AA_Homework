class Stack

    attr_reader :arr

    def initialize
      # create ivar to store stack here!
      @arr = []
    end

    def push(el)
      # adds an element to the stack
      @arr << el
    end

    def pop
      # removes one element from the stack
      @arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @arr[-1]
    end
  end

class Queue

    attr_reader :arr

    def initialize
        @arr = []
    end

    def enqueue(el)
        @arr << el
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr[0]
    end
end

class Map

    attr_reader :arr
    
    def initialize
        @arr = []
    end
  
    def set(key, value)
        @arr.each do |sub_arr|
            if sub_arr[0] == key
                sub_arr[1] = value
            end
        end
        @arr
    end
  
    def get(key)
        @arr.each { |sub_arr| return sub_arr[1] if sub_arr[0] == key }
        nil
    end
  
    def delete(key)
        @arr.reject! { |sub_arr| sub_arr[0] == key }

    end
  
    def show
      deep_dup(@arr)
    end
    
    def deep_dup(arr)
        arr.map do |el| 
            if el.is_a?(Array)
                deep_dup(el) 
            else
                el
            end
        end
    end  
  end