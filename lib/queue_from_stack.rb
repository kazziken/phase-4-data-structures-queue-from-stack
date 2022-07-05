require_relative './stack'

# your code here
class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        # @s1: [2,1] and @s2: []
        # we do #add(3); which pushes the values of s1 into s2
        # @s1: [] and   @s2: [2,1,] 
        @s2.push(@s1.pop) until @s1.empty?
        #next add new items into now empty stack s1
        @s1.push(value)
        # @s1:[3] and @s2:[2,1]
        #then return all items into s1 in the order they were removed
        @s1.push(@s2.pop) until @s2.empty?
    end

    def remove
        @s1.pop
    end

    def peek
        @s1.peek
    end





end
