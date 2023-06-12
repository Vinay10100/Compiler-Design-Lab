/*Design a LEX Code to count and print the number of
total characters, words, white-spaces in given 'Input.txt' file*/
%{
#include<stdio.h>
int character=0,words=0,space=0;
%}
%%
[" "] {space++; words++;}
[\n\t] {words++;}
[^\n\t] character++;
%%
int yywrap(){
return 1;
}
int main(){
yyin=fopen("abc.txt","r");
yylex();
printf("Spaces::%d\nWords::%d\nCharacters::%d\n",space,words,character);
}
