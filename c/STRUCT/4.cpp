#include <iostream>
using namespace std;
struct scores{
    double math;
    double adabiat;
} ;

struct Student {
    const char *name = nullptr;
    int age = 10; // default
    scores score;
};
int main(){
    Student q;
    q.name =  "ali";
    q.name = "taghi";
    cout << q.score.math;
    q = { "ali", 12, {13,14}};
/*


    Student *studentList = new Student[4];
    studentList[0].name = "ali alavi";
    studentList[0].age = 17;
    studentList[0].scores
*/


    return 0;
}
