/// The Art of Computer Programming
/// Section 1.1 - Algorithm E
/// Author: Carlos L. Cuenca
/// Date: 10/22/20

/// -------
/// Imports

import kotlin.math.abs

/// -----------------------
/// Function Implementation

fun algorithm_e(m: Int, n: Int): Int {

    var mAbs = abs(m)
    var nAbs = abs(n)

    if(mAbs < nAbs) {

        val temp = nAbs
        nAbs = mAbs
        mAbs = temp

    }

    var remainder = mAbs % nAbs

    while(remainder != 0) {

        remainder = mAbs % nAbs

        if(remainder == 0) break

        mAbs = nAbs
        nAbs = remainder

    }

    return nAbs

}

/// --------------
/// Driver Program

fun main(args: Array<String>) {

    var inputCount = readLine()!!.toInt()

    println(inputCount)

    while(inputCount != 0) {

        val values = readLine()!!.split(' ').map(String::toInt).toTypedArray()

        println(algorithm_e(values[0], values[1]))

        inputCount--

    }

}
