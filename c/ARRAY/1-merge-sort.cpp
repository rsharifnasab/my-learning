#include <iostream>
using namespace std;

void Merge(int a[], int low, int high, int mid){

    int temp[high-low+1];
    int k = 0;

    int i = low;
    int j = mid + 1;

	while (i <= mid && j <= high){
		if (a[i] > a[j]) {
			temp[k] = a[i];
			k++;
			i++;
		} else {
			temp[k] = a[j];
			k++;
			j++;
		}
	}

    // baghie e arraye to bezarim akhar

	while (i <= mid){
		temp[k] = a[i];
		k++;
		i++;
	}
    // XOR
	while (j <= high){
		temp[k] = a[j];
		k++;
		j++;
	}

	for (i = low; i <= high; i++){
		a[i] = temp[i-low];
	} // bezarim hame ro sar e jash
}

void MergeSort(int a[], int low, int high){
	if (low < high){

		int mid=(low+high)/2;

        MergeSort(a, low, mid);
		MergeSort(a, mid+1, high);

        Merge(a, low, high, mid);
	}
}

int main(){

	int n;
	cin>>n;
	int arr[n];

	for(int i = 0; i < n; i++)
		cin>>arr[i];

	MergeSort(arr, 0, n-1);

	for (int i = 0; i < n; i++)
        cout<<arr[i] << " ";
    cout << endl;

	return 0;
}
