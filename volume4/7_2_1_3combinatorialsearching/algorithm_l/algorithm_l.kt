/// The Art of Computer Programming
/// Section 1.1 - Algorithm F
/// Author: Carlos L. Cuenca
/// Date: 10/22/20

/// -------
/// Imports

import kotlin.math.abs

/// -----------------------
/// Function Implementation

fun algorithm_l(n: Int, choose: Int) {

    if(n < choose) return

    var combinations: MutableList<Int> = MutableList(choose + 2) { 0 }

    for(j in 0 until choose) {

        combinations[j] = j;

    }

    combinations[choose] = n
    combinations[choose + 1] = 0

    var j : Int = 0

    while(j < choose) {

        // Visit the combination
        for(index in 0 until choose) {

            print(combinations[index].toString() + " ")

        }

        println(" ")

        j = 0

        while(combinations[j] + 1 == combinations[j + 1]) {

            combinations[j] = j

            j++

        }

        combinations[j]++

    }

}

/// --------------
/// Driver Program

fun main(args: Array<String>) {

    var number = 6

    for(choose in 0 until number) {

        algorithm_l(number, choose)

    }

}
