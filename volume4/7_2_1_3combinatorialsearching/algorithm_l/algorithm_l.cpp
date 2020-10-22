/// General Algorithms - Combinatronics
/// Lexicographic Combination Generator
/// Author: Carlos L. Cuenca
/// Date: 10/13/20

#include<iostream>
#include<string>
#include<vector>
#include<cmath>
#include<climits>
#include<algorithm>

/// -----------------
/// Program Constants

const int SUCCESS = 0;

/// --------------
/// Driver Program

int main(int argc, char* argv[]) {

    /// -----------------
    /// Program Variables

	int number;

	/// -------
	/// Program

	std::cin >> number;

	//  We loop through all t combinations
	for(int t = 1; t <= number; t++) {
		
		std::vector<int> combinations(t + 2);

		for(int j = 0; j < t; j++)
			combinations[j] = j;

		combinations[t] = number;
		combinations[t + 1] = 0;

		int j = 0;

		while(j < t) {

			for(int index = 0; index < t; index++)
				std::cout << combinations[index] << " ";

			std::cout << std::endl;

			j = 0;

			while(combinations[j] + 1 == combinations[j + 1]) {

				combinations[j] = j;

				j++;

			}

			combinations[j]++;

		}

	}

	return SUCCESS;

}
