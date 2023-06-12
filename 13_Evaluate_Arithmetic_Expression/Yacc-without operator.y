/*Yacc-without operator*/
%{
#include <stdio.h>
%}
%token num
%%
S:E {printf("Result: %d\n", $1); return 0;}
E: E '+' T { $$ = $1 + $3; }
 | E '-' T { $$ = $1 - $3; }
 | T { $$ = $1; }
 ;
T: T '*' F { $$ = $1 * $3; }
 | T '/' F { $$ = $1 / $3; }
 | F { $$ = $1; }
 ;
F: num { $$ = $1; }
 | '(' E ')' { $$ = $2; }
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
