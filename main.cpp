#include <iostream>
#include <cmath>
#include <vector>
#define LENGTH 10000000

int main() {
    TYPE coord = 0;
    TYPE* array = new TYPE[LENGTH];
    TYPE total_sum = 0;
    TYPE step = M_PI * 2 / LENGTH;
    for (int i = 0; i < LENGTH; ++i) {
        array[i] = sin(coord);
        total_sum += sin(coord);
        coord += step;
    }
    std::cout << total_sum << std::endl;
}




