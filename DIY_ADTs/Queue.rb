class Queue
    def initialize
        @q = []
    end
    def enqueue(ele)
        @q.push(ele)
    end
    def dequeue
        @q.shift
    end
    def peek
        @q[0]
    end
    def inspect
        @q.inspect
    end
end

if __FILE__ == $PROGRAM_NAME
    queue = Queue.new
    queue.enqueue('a')
    queue.enqueue('b')
    queue.enqueue('c')
    p queue
    p queue.dequeue
    p queue
    p queue.peek
    p queue
end