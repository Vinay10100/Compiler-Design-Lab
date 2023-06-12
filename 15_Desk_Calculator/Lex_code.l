%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

%%

[0-9]+ {    // Matches one or more digits
    yylval = atoi(yytext);    // Converts the matched string to an integer and assigns it to yylval
    return NUMBER;    // Returns the NUMBER token
}

[\t] ;    // Ignores tab characters
[\n] return 0;    // Ignores newline characters
. return yytext[0];    // Returns any other single character encountered

%%

int yywrap() {
    return 1;    // Indicates the end of the input stream
}
