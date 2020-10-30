/// The Art of Computer Programming
/// Section 1.1 - Algorithm L
/// Author: Carlos L. Cuenca
/// Date: 10/27/20

/// -------
/// Imports

import Foundation

/// -----------------------
/// Function Implementation

func algorithm_l(n: Int, choose: Int) -> Void {

    if n < choose || choose == 0 { return }

    var combinations: [Int] = [Int](repeating: 0, count: choose + 2)

    for j in 0...choose -  1 {

        combinations[j] = j;

    }

    combinations[choose] = n
    combinations[choose + 1] = 0

    var j : Int = 0

    while j < choose {

        var printString = ""

        // Visit the combination
        for index in 0...choose - 1 {

            printString += String(combinations[index]) + " "

        }

        print(printString)

        j = 0

        while combinations[j] + 1 == combinations[j + 1] {

            combinations[j] = j

            j += 1

        }

        combinations[j] += 1

    }

}

/// --------------
/// Driver Program

var number = 6

for choose in 1...number {

    algorithm_l(n: number, choose: choose)

}
