class Stack
    def initialize
        # create ivar to store stack here!
        @stacked = []
    end

    def inspect
        @stacked.inspect
    end

    def push(el)
        # adds an element to the stack
        @stacked.push(el)
    end

    def pop
        # removes one element from the stack
        @stacked.pop
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @stacked[-1]
    end
  end

  if __FILE__ == $PROGRAM_NAME
    stack = Stack.new
    stack.push('a')
    stack.push('b')
    stack.push('c')
    p stack
    stack.pop
    p stack
    p stack.peek
    p stack
    p stack.pop
    p stack
  end
