/// The Art of Computer Programming
/// Section 1.1 - Algorithm F
/// Author: Carlos L. Cuenca
/// Date: 10/27/20

/// -------
/// Imports

import Foundation

/// -----------------------
/// Function Implementation

func algorithm_f(m: Int, n: Int) -> Int {

    var mAbs = abs(m)
    var nAbs = abs(n)

    if(mAbs < nAbs) {

        let temp = nAbs
        nAbs = mAbs
        mAbs = temp

    }

    if(n == 0) {

        return m

    }

    return algorithm_f(m: nAbs, n: mAbs % nAbs)

}

/// --------------
/// Driver Program

var inputCount = Int(readLine()!)!

while(inputCount > 0) {

    let values : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

    print(algorithm_f(m: values[0], n: values[1]))

    inputCount -= 1

}
