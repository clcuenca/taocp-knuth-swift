# Section 1.1 - Algorithm F
# From Knuth's The Art of Computer Programming
# Author: Carlos L. Cuenca
# Date: 10/21/20

# ------------------------
# Function Implementations

def algorithm_f(m, n)

    m = m.abs;
    n = n.abs;

    if(m < n) then

        temp = n
        n = m
        m = temp

    end

    if n == 0 then return m end

    return algorithm_f(n, m % n)

end

# -------
# Program

ARGF.each do |line|

    array = line.split.map(&:to_i)

    puts algorithm_f(array[0], array[1])

end