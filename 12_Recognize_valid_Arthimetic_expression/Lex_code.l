/*Design YACC/LEX code to recognize valid arithmetic expression 
with operators +,-,*and /.*/
%{
#include "y.tab.h"
%}
%%
[a-zA-Z]+ {return id;}
[0-9]+ {return num;}
[-+\/*=] {return yytext[0];}
[ \t] ;
[\n] {return 0;} 
. {printf("Invalid character '%c'\n", yytext[0]);}
%%
int yywrap() 
{
return 1;
}