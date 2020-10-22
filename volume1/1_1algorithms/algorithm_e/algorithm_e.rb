# Section 1.1 - Algorithm E
# From Knuth's The Art of Computer Programming
# Author: Carlos L. Cuenca
# Date: 10/21/20

# ------------------------
# Function Implementations

def algorithm_e(m, n)

    m = m.abs
    n = n.abs

    if m < n then

        temp = n
        n = m
        m = temp

    end

    remainder = m % n

    while remainder > 0 do

        remainder = m % n

        if remainder == 0 then break end

        m = n
        n = remainder

    end

    return n

end

# -------
# Program

ARGF.each do |line|

    array = line.split.map(&:to_i)

    puts algorithm_e(array[0], array[1])

end
