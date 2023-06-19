
# If we list all the natural numbers below  that are multiples of  or , we get  and . The sum of these multiples is .

# Find the sum of all the multiples of 3 or 5 below 1000.

using Test

# my bare bones attempt at this

function sumMultiple(n1, n2,max)
    sum = 0
    for i in 1:max-1
        if (i%n1 == 0 || i%n2==0)
            sum = sum + i
            @show sum # for debugging purposes
        end
    end 
    sum
end

# method in key: recursion

function sumDivisibleBy(n,target) 
    p = div(target,n)
    return div(n * (p*(p+1)),2)
end


# using the example they gave
@test sumMultiple(3,5,10) == 23

# time 
@time sumMultiple(3,5,1000)







