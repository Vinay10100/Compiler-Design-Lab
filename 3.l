/*Design a LEX Code to identify and print integer and float value in given Input pattern.*/
%{
#include<stdio.h>
%}
%%
[0-9]+['.'][0-9]+ {printf("\nDecimal");}
.+	{printf("\nInteger");}
%%
int yywrap(){}
int main(){
yylex();
}
