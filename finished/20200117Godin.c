/*
*   Liam Godin
*   20200117 questions
*
*/

//Page 2
if(x == 3) {
    x++;
}
else {
    x--;
}

//Page 3
typedef enum{
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY
} weekdays;

weekdays daysOfWeek = MONDAY;

switch(daysOfWeek){
    case MONDAY:
        break;
    case TUESDAY:
        break;
    case WEDNESDAY:
        break;    
    case THURSDAY:
        break;
    case FRIDAY:
        break;
    default:
        break;
}

//Page 4

//Exercise 1:
for(int i = 0, j = 1; j <=5; i++, j+=2){
    // iterate through something maybe
}

//Exercise 2:
for(int i = 0; i < 5;){
    //an infinite for loop
}

//Page 5

//Excercise 1:
bool done = false;
while(!done){
    //will run if done is false
}

//Excercise 2:
bool firstVariable = true;
bool secondVariable = false;
while(firstVariable && secondVariable){
    //will run if both are true
}

// Exercise 3:
bool firstVariable = true;
bool secondVariable = false;
while(firstVariable || secondVariable){
    //will run if at least one is true
}

//Page 6

// Exercise 1:
int i = 0;
do {
    printf("i is %d.\n", i++);
} while (<3);

// Exercise 2:
int i = 1;
printf("i is %d.\n", i);
while(1<3){
    printf("i is %d.\n", i++);
}

// Page 8

// Exercise 1:
bool function(bool aBool) {
    bool = false;
    int x = 3;
    if(x==3){
        aBool = true;
    }
    return aBool;
}

// Exercise 2:
bool function(bool aBool);

//Excercise 3:
int main(){
    bool aBoolValue = true;
    bool booleanValue = function(aBoolValue)
}

// Exercise 4:
bool function (bool aBool){
    aBool = false;
    for(int i = 0; i < 10; x++){
        if(i == 3) {
            aBool = true;
        }
    }
    return aBool;
}

// The prototype for this function does not change

// Exercise 5:
double anotherFunction(int aNum){
    double value = (double) aNum/2.0;
    int i = 1;

    switch(i){
        case 1:
            printf("case 1");
            break;
        default:
            printf("case default");
            break;
    }

    return value;
}