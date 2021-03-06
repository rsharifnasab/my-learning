#include<iostream>
#define SIZE 100
using namespace std;

void init_matrix(int matrix[][SIZE], int row, int column);
void transpose(int matrix[][SIZE], int transpose[][SIZE], int row, int column);
void multiply_matrix(int matrix1[][SIZE], int matrix2[][SIZE], int mult[][SIZE], int r1, int r2, int c1, int c2);
void print_matrix(int matrix[][SIZE], int row, int column);

int main()
{
	int r1, r2, c1, c2;
	cin >> r1 >> c1;
	cin >> r2 >> c2;
	if (r1 != c2)
	{
		cout << "Undefined" << endl;
		return 0;
	}

	int matrix1[SIZE][SIZE];
	int matrix2[SIZE][SIZE];
	init_matrix(matrix1, r1, c1);
	init_matrix(matrix2, r2, c2);

	int transpose1[SIZE][SIZE];
	int transpose2[SIZE][SIZE];
	int mult[SIZE][SIZE];
	transpose(matrix1, transpose1, r1, c1);
	transpose(matrix2, transpose2, r2, c2);
	multiply_matrix(transpose1, transpose2, mult, c1, r1, c2, r2);

	print_matrix(mult, c1, r2);
	return 0;
}

void init_matrix(int matrix[][SIZE], int row, int column)
{
	for (int i = 0; i < row; ++i)
		for (int j = 0; j < column; ++j)
			cin >> matrix[i][j];
}

void transpose(int matrix[][SIZE], int transpose[][SIZE], int row, int column)
{
	for (int i = 0; i < column; ++i)
		for (int j = 0; j < row; ++j)
				transpose[i][j] = matrix[j][i];
}

void multiply_matrix(int matrix1[][SIZE], int matrix2[][SIZE], int mult[][SIZE], int r1, int r2, int c1, int c2)
{
	for (int i = 0; i < r1; ++i)
		for (int j = 0; j < c2; ++j)
		{
			int sum = 0;
			for (int k = 0; k < r2; ++k)
				sum += matrix1[i][k] * matrix2[k][j];
			mult[i][j] = sum;
		}//end middle for
}

void print_matrix(int matrix[][SIZE], int row, int column)
{
	for (int i = 0; i < row; ++i)
	{
		int end = column - 1;
		for (int j = 0; j < end; ++j)
			cout << matrix[i][j] << " ";
		cout << matrix[i][end] << endl;
	}
}
