/*Design a LEX Code to remove the comments from any C Program given at run-time and store into'out.c' file.*/
%{
#include<stdio.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("input.c","r");
yyout=fopen("output.c","w");
yylex();
return 0;
}