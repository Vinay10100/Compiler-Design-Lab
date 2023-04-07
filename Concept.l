%{
#include <stdio.h> // Include standard input/output library
%}

// The section below defines external variables and functions that can be used in the rules section and in the C code section.
%option noyywrap // Disable automatic wrapping of input

%%
// The section below defines the lexical rules and their corresponding actions.
hello   printf("Hello, world!\n");
world   printf("World!\n");
%%

// The section below defines the C code that will be executed after all the rules have been processed. 
int main() {
    yylex(); // Start lexical analysis
    return 0; // Return 0 to indicate successful program termination
}
