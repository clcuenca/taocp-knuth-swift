/// The Art of Computer Programming
/// Section 1.1 - Algorithm E
/// Author: Carlos L. Cuenca
/// Date: 10/27/20

/// -------
/// Imports

import Foundation

/// -----------------------
/// Function Implementation

func algorithm_e(m: inout Int, n: inout Int) -> Int {

    m = abs(m)
    n = abs(n)

    if m < n {

        let temp = n
        n = m
        m = temp

    }

    var remainder = m % n

    while(remainder != 0) {

        remainder = m % n

        if(remainder == 0) { break }

        m = n
        n = remainder

    }

    return n

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

    let values : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

    var m = values[0]
    var n = values[1]

    print(algorithm_e(m: &m, n: &n))

    inputCount -= 1

}
