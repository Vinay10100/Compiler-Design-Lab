/*Yacc-with operator*/
%{
#include <stdio.h>
%}
%token num
%left '+' '-'
%left '*' '/'
%%
S:E {printf("Result: %d\n", $1); return 0;}
E:E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | num { $$ = $1; }
;
%%
int main() 
{
printf("Enter the arithmetic expression: "); 
yyparse();
return 0;
}
int yyerror(char *s) 
{
printf("Error: %s\n", s);
return 0;
}
