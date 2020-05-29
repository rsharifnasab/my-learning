#include<iostream>
using namespace std;

int** create(int row, int col)
{
    int** a = new int* [row];
    for(int i = 0; i < row; i++){
        a[i] = new int [col];
        for(int j = 0; j < col; j++)
            cin>>a[i][j];
    }
    return a;
}

int** add(int** a, int** b, int r, int c) {
    int **ans = new int *[r];
    for(short i = 0; i < r; i++)
    {
        ans[i] = new int[c];
        for(short j = 0; j < c; j++)
            ans[i][j] =  a[i][j] + b[i][j];
    }
    return ans;
}

void destroy(int** matrix, int row, int col)
{
    for(int i = 0 ; i < row ; i++)
        delete[] matrix[i];
    delete[] matrix;
}

int main(){
    int r, c;
    cin>>r>>c;
    int** m1 = create(r, c);
    int** m2 = create(r, c);
    int** ans = add(m1, m2, r, c);
    destroy(m1, r, c);
    destroy(m2, r, c);
    for(int i = 0; i < r; i++){
        for(int j = 0; j < c; j++)
            cout<<ans[i][j]<<' ';
        cout<<endl;
    }
    destroy(ans, r, c);
    return 0;
}
