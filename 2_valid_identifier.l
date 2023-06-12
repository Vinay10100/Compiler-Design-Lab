/*Design a LEX Code to identify and print valid Identifier of C/C++ in given Input pattern.*/
%{
#include <stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]* printf("Valid Identifier: %s\n", yytext);
.* printf("Invalid Identifier: %s\n", yytext);
%%
int yywrap(){}
int main(){
yylex();
return 0;
}
