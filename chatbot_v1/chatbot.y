%{
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void yyerror(const char *s);
int yylex(void);
%}

%token HELLO GOODBYE TIME NAME WEATHER HOWAREYOU

%%

chatbot : greeting
        | farewell
        | query
        ;

greeting : HELLO { printf("Chatbot: Hello! How can I help you today?\n"); }
         ;

farewell : GOODBYE { printf("Chatbot: Goodbye! Have a great day!\n"); }
         ;

query : TIME { 
            time_t now = time(NULL);
            struct tm *local = localtime(&now);
            printf("Chatbot: The current time is %02d:%02d.\n", local->tm_hour, local->tm_min);
         }
       | NAME { printf("Chatbot: My name is Chatbot.\n"); }
       | WEATHER { printf("Chatbot: You can check the current weather at this link: https://www.google.com/search?client=safari&rls=en&q=weather&ie=UTF-8&oe=UTF-8\n"); }
       | HOWAREYOU { printf("Chatbot: I'm just a program, but I'm here to help you!\n"); }
       ;

%%

int main() {
    printf("Chatbot: Hi! You can greet me, ask for the time, ask for my name, inquire about the weather, ask how I am, or say goodbye.\n");
    while (yyparse() == 0) {
        // Loop until end of input
    }
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Chatbot: I didn't understand that.\n");
}
