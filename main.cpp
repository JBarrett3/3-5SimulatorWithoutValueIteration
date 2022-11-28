#include <iostream>
#include <cstring>
#include <math.h>

struct State {
    int x;
    int y;
};

struct StateValue {
    struct State state;
    int value;
};

double multiEpisodicRunner();
double episodeRunner(struct State initialState, int numberTrials);
struct StateValue stateRunner(State initialState);
char* chooseDirection();
struct StateValue valueFunction(struct State state, char* action);
void stateShiftNarrator(struct State initial, struct StateValue final);

int main() {
    double averagedValue = multiEpisodicRunner();
    printf("Averaged value : %f\n", averagedValue);
}

double multiEpisodicRunner() {
    //runs multiple episodes
    printf("Input parameters as prompted.\n");
    int input;
    struct State initialState;
    printf("Inital X:");
    scanf("%d", &input);
    initialState.x = input;
    printf("Inital Y:");
    scanf("%d", &input);
    initialState.y = input;
    printf("Number of trials:");
    scanf("%d", &input);
    int numberTrials = input;
    printf("Number of Episodes:");
    scanf("%d", &input);
    int numberEpisodes = input;
    printf("Initial Position : (%d,%d), number of trials : %d, number of episodes : %d\n", initialState.x, initialState.y, numberTrials, numberEpisodes);
    double cumulativeEpisodicValue = 0;
    for (int i = 0; i < numberEpisodes; i++) {
        cumulativeEpisodicValue += episodeRunner(initialState, numberTrials);
    }
    return cumulativeEpisodicValue/numberEpisodes;
}

double episodeRunner(struct State initialState, int numberTrials) {
    //runs single episode
    struct State currentState {
        .x = initialState.x,
        .y = initialState.y
    };
    struct StateValue currentStateValue {
        .state = currentState,
        .value = 0
    };

    double gamma = 0.9;
    srand(time(0));
    double totalValue = 0;
    for (int i = 0; i < numberTrials; i++) {
        currentStateValue = stateRunner(currentStateValue.state);
        totalValue += currentStateValue.value * pow(gamma,i);
        printf("so the cumulative value is %f\n", totalValue);
    }

    printf("Value of initialState (%d,%d) : %f\n", initialState.x, initialState.y,  totalValue);

    return totalValue;

}

struct StateValue stateRunner(State initialState) {
    //takes action and returns new state with value
    char* action = chooseDirection();
    struct StateValue stateValue = valueFunction(initialState, action);
    stateShiftNarrator(initialState, stateValue);
    return stateValue;
}

char* chooseDirection() {
    //randomly chooses direction

    char* direction;
    int num = (rand() % (4)); //generates random number between 0 and 3
    if (num == 0) {
        direction = "left";
    } else if (num == 1) {
        direction = "up";
    } else if (num == 2) {
        direction = "right";
    } else { //if (num == 3)
        direction = "down";
    }

    return direction;
}

struct StateValue valueFunction(struct State state, char* action) {
    //returns mew state and value of action

    struct StateValue stateValue {
        .state = state,
        .value = 0
    };

    if (stateValue.state.x == -1 && stateValue.state.y == 2) { //A
        stateValue.state.y -= 4;
        stateValue.value = 10;
    } else if (stateValue.state.x == 1 && stateValue.state.y == 2) { //B
        stateValue.state.y -= 2;
        stateValue.value = 5;
    } else if (strcmp(action, "left") == 0) {
        if (stateValue.state.x == -2) {
            stateValue.value = -1;
        } else {
            stateValue.state.x--;
        }
    } else if (strcmp(action, "up") == 0) {
        if (stateValue.state.y == 2) {
            stateValue.value = -1;
        } else {
            stateValue.state.y++;
        }
    } else if (strcmp(action, "right") == 0) {
        if (stateValue.state.x == 2) {
            stateValue.value = -1;
        } else {
            stateValue.state.x++;
        }
    } else if (strcmp(action, "down") == 0) {
        if (stateValue.state.y == -2) {
            stateValue.value = -1;
        } else {
            stateValue.state.y--;
        }
    }

    return stateValue;
}

void stateShiftNarrator(struct State initial, struct StateValue final) {
    //narrates the shift
    printf("moving from (%d,%d) to (%d,%d) with reward "
           "%d, ", initial.x, initial.y, final.state.x, final.state.y, final.value);
}