#include <iostream>

int sum(int a, int b) {
    return a + b;
}

int main()
{
    int a = 10;
    std::cout << "VALUE:" << a << "\n";
    int c = sum(a, a - 5);
    std::cout << "SUM:" << c << "\n";
    return 0;
}