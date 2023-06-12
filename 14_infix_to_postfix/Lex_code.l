/*Design YACC/LEX code that translates infix expression to postfix expression*/
%{
#include "y.tab.h"
extern int yylval;
%}
%%
[a-zA-Z]+ { yylval=*yytext; return id; }
[0-9]+ {yylval = atoi(yytext); return num;}
[-+\/*()] {return (int)yytext[0];}
[ \t] ;
[\n] {return 0;}
. {printf("Invalid character '%c'\n", yytext[0]); }
%%
int yywrap() 
{
return 1;
}