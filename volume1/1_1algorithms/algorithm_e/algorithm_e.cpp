/// The Art of Computer Programming
/// Section 1.1 - Algorithm E
/// Author: Carlos L. Cuenca
/// Date: 10/17/20

#include<iostream>
#include<string>
#include<vector>
#include<cmath>
#include<climits>
#include<algorithm>

/// -----------------
/// Program Constants

const int SUCCESS = 0;

/// -----------------------------
/// Function Forward Declarations

int gcd(int, int);

/// --------------
/// Driver Program

int main(int argc, char* argv[]) {

    /// -----------------
    /// Program Variables

    int m;
    int n;

    std::cin >> m >> n;

    std::cout << gcd(m, n) << std::endl;

	return SUCCESS;

}

/// ----------------------
/// Function Impelentation

int gcd(int m, int n) {
    
    m = std::abs(m);
    n = std::abs(n);

    if(m < n) {

	   	int temp = n;
	   	n = m;
	   	m = temp;

	}

    int remainder = m % n;

    while(remainder) {

	    remainder = m % n;

	    if(!remainder) break;

	    m = n;
	    n = remainder;

    }

    return n;

}