%{
#include<stdio.h>

int flag = 0;    // Flag variable to indicate if the arithmetic expression is valid
%}

%token NUMBER    // Definition of the NUMBER token

%left '+' '-'    // Precedence and associativity of operators
%left '*' '/' '%'
%left '(' ')'

%%

ArithmeticExpression: E {    // Production rule for the arithmetic expression
    printf("\nResult=%d\n", $$);
    return 0;
};

E: E '+' E    { $$ = $1 + $3; }    // Addition operation
 | E '-' E    { $$ = $1 - $3; }    // Subtraction operation
 | E '*' E    { $$ = $1 * $3; }    // Multiplication operation
 | E '/' E    { $$ = $1 / $3; }    // Division operation
 | E '%' E    { $$ = $1 % $3; }    // Modulus operation
 | '(' E ')'  { $$ = $2; }    // Parentheses
 | NUMBER     { $$ = $1; }    // Numeric value
;

%%

void main() {
    printf("\nEnter any arithmetic expression:\n");
    yyparse();    // Initiates the parsing process
    
    if (flag == 0)
        printf("\nEntered arithmetic expression is valid\n\n");    // Displayed if the expression is valid
}

void yyerror() {
    printf("\nEntered arithmetic expression is invalid\n\n");    // Displayed if there is a syntax error
    flag = 1;    // Set flag to indicate an error occurred
}
