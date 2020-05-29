#include <iostream>

using namespace std;

void enqueue(char *&queue, int &n, char data) {
    char *newQueue = new char[n + 1];
    for (int i = 0; i < n; ++i) {
        newQueue[i] = queue[i];
    }
    newQueue[n++] = data;
    queue = newQueue;

}

char dequeue(char *&queue, int &n) {
    if (n < 1) {
        cout << "empty" << endl;
    } else {
        char output = queue[0];
        for (int i = 1; i < n; ++i) {
            queue[i - 1] = queue[i];
        }
        n--;
        cout << output<<endl;
    }

}

void print_queue(char *queue, int n) {
    if (n < 1) {
        cout << "empty" << endl;
    } else {
        for (int i = 0; i < n; ++i) {
            cout << queue[i] <<" ";
        }
        cout<<endl;
    }

}

int main() {
    char instruct;
    int n = 0;
    char *queue = new char[0];
    while (true) {
        cin >> instruct;
        switch (instruct) {
            case 'E':
                char input;
                cin >> input;
                enqueue(queue, n, input);
                break;

            case 'D':
                dequeue(queue, n) ;
                break;

            case 'S':
                cout << n<<endl;
                break;
            case 'P':
                print_queue(queue, n);
                break;
            case 'F':
                return 0;
        }

    }


}
