# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    s = 0
    arr.each{|a| s+= a}
    s
end

def max_2_sum arr
    if arr.length == 0  
        return 0
    elsif arr.length == 1
        return arr[0]
    elsif arr.length >= 2
        largest = arr.max
        selargest = arr.sort[-2]
        return (largest + selargest)
    end
    
end
def sum_to_n? arr, n
    for i in 0..arr.length-1
        for j in 0..arr.length-1
            if arr[i]+arr[j] == n && i!=j
                return true
            end
        end
    end
    return false
end


# Part 2

def hello(name)
    string1 = 'Hello, '
    string2 = name
    return string1+string2
end


def starts_with_consonant? s
    if s.length == 0
        return false
    end    
    if s[0].upcase == 'B' or s[0].upcase == 'C' or s[0].upcase == 'D' or s[0].upcase == 'F' or s[0].upcase == 'G' or s[0].upcase == 'H' or s[0].upcase == 'J' or s[0].upcase == 'K' or s[0].upcase == 'L' or s[0].upcase == 'M' or s[0].upcase == 'N' or s[0].upcase == 'P'or s[0].upcase == 'Q'or s[0].upcase == 'R'or s[0].upcase == 'S'or s[0].upcase == 'T' or s[0].upcase == 'V' or s[0].upcase == 'W'or s[0].upcase == 'X' or s[0].upcase == 'Y' or s[0].upcase == 'Z'   
        return true
    else
        return false
    end
end

def binary_multiple_of_4? s
    if s == '0'
        return true
    end
    if s[-1]== '0' and s[-2]=='0' 

        chars = s.split('') 
        chars.each { |c|
            if c!='0' and c!='1'
                return false
            end
        }
        return true
    else
        return false
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def initialize(i,p)
        @isbn = i
        @price = p
        
        if @isbn == '' or @price <= 0
            raise ArgumentError
        end
    end

    
    def isbn
        @isbn
    end
    
    def isbn=(i2)
        @isbn = i2
    end
    
    def price=(p2)
        @price = p2
    end
    
    def price
        @price
    end
    
    def price_as_string
        p3=format("%0.2f",@price.to_s)    
         "$"+ p3
    end
end
