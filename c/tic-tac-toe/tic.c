#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define SIZE 3
#define EMPTY '_'
#define random_choose true

enum player {
    user,
    computer,
} x,
    o;

char board[SIZE][SIZE];
char turn = 'x';

void print_board()
{
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%c ", board[i][j]);
        }
        printf("\n");
    }
}

char determine_first_player()
{
    char first_player;
    if (!random_choose) {
        printf("Who will go first? (x or o)\n");
        scanf(" %c", &first_player);
    } else {
        first_player = rand() % 2 ? 'x' : 'o';
    }

    if (first_player != 'x' && first_player != 'o') {
        printf("Invalid input.\n");
        return determine_first_player();
    } else {
        return first_player;
    }
}

bool is_second_player_ai()
{
    char second_player;
    printf("Will the second player be an AI? (y or n)\n");
    scanf(" %c", &second_player);
    if (second_player == 'y') {
        return true;
    } else if (second_player == 'n') {
        return false;
    } else {
        printf("Invalid input.\n");
        return is_second_player_ai();
    }
}

void init_game()
{
    srand(time(0));
    // init board
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            board[i][j] = EMPTY;
        }
    }
    // who palys first
    turn = determine_first_player();

    // x is always user (but not first player)
    x = user;
    o = is_second_player_ai() ? computer : user;
}

int* get_input()
{
    printf("turn %c\n", turn);
    int* input = calloc(sizeof(int), 2);
    printf("Enter row and column: ");
    scanf("%d %d", &input[0], &input[1]);
    return input;
}

bool is_valid_input(int* input)
{
    if (input[0] < 0 || input[0] > 2 || input[1] < 0 || input[1] > 2) {
        return false;
    }
    if (board[input[0]][input[1]] != EMPTY) {
        return false;
    }
    return true;
}

void change_turn()
{
    if (turn == 'x') {
        turn = 'o';
    } else {
        turn = 'x';
    }
}

void apply_user_input()
{
    int* input = get_input();
    while (!is_valid_input(input)) {
        printf("Invalid input. Try again.\n");
        free(input);
        input = get_input();
    }
    board[input[0]][input[1]] = turn;
    free(input);
}

void apply_computer_input()
{
    printf("computer turn\n");
    int x, y;
    do {
        x = rand() % 3;
        y = rand() % 3;
    } while (board[x][y] != EMPTY);

    printf("computer chooses %d %d\n", x, y);
    board[x][y] = turn;
}

char winner()
{
    for (int i = 0; i < SIZE; ++i) {
        // xxx
        //
        //
        if (board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
            if (board[i][0] != EMPTY)
                return board[i][0];
        }
        // x
        // x
        // x
        if (board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
            if (board[0][i] != EMPTY)
                return board[0][i];
        }
    }
    // x
    //  x
    //   x
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
        if (board[0][0] != EMPTY)
            return board[0][0];
    }
    //   x
    //  x
    // x
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
        if (board[0][2] != EMPTY)
            return board[0][2];
    }

    return EMPTY;
}

bool is_tie()
{
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            if (board[i][j] == EMPTY)
                return false;
        }
    }
    return true;
}

bool no_winner()
{
    return winner() != EMPTY;
}

bool user_turn()
{
    if (turn == 'x') {
        return x == user;
    } else {
        return o == user;
    }
}

int main()
{
    init_game();
    while (1) {
        print_board();

        if (user_turn()) {
            apply_user_input();
        } else {
            apply_computer_input();
        }
        change_turn();

        if (no_winner()) {
            print_board();
            printf("%c wins!\n", winner());
            break;
        } else if (is_tie()) {
            print_board();
            printf("Tie!\n");
            break;
        }
    }
    return 0;
}
