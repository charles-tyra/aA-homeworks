class Stack
    def initialize
      @stack = Array.new
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
end


class Queue
    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end


class Map
    def initialize
        @map = Array.new
    end

    def set(key, value)
        @map.map do |pair|
            if key == pair[0]
                [key, value]
            else
                pair
            end
        end
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair[0] == key }
    end

    def delete(key)
        @map.reject { |pair| pair[0] == key }
    end

    def show
        @map
    end

end