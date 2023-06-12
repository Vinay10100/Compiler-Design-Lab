%{
#include <stdio.h>
%}
%token num id 
%left '+' '-'
%left '*' '/'
%%
S:E {printf("Valid arithmetic expression\n"); return 0; }
 |E'='E {printf("Valid arithmetic expression\n"); return 0; }
E:E'+'E
 |E'-'E
 |E'*'E
 |E'/'E
 |num
 |id
 ;
%%
int main() 
{
printf("Enter the expression: "); 
yyparse();
return 0;
}
int yyerror(char *s) 
{
printf("Error: %s\n", s);
return 0;
}
