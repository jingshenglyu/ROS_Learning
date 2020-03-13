#include<iostream>
#include<cstdlib>
#include<string.h>
using namespace std;

int main(int argc, char** argv)
{
    int pose_x, pose_y;
    unsigned seed;
    cout << "Please enter an unsigned integer: ";
    cin >> seed;
    srand(seed);
    pose_x = rand() % 10 + 1;
    pose_y = rand() % 10 + 1;

    cout << pose_x << " " << pose_y << endl;

    return 0;

}