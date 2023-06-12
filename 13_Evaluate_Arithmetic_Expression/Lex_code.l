/* Design YACC/LEX code to evaluate arithmetic expression involving operators +,-,*and/ without operator precedence grammar & with operator precedence grammar.*/
%{
#include "y.tab.h"
extern int yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext); return num;}
[-+\/*] {return yytext[0];}
[ \t] ;
[\n] {return 0;}
. {printf("Invalid character '%c'\n", yytext[0]); }
%%
int yywrap() 
{
return 1;
}