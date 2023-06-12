/*Design a LEX code to extract all html tag in the given HTMLfile at run time and store into Text file given at run-time.*/
%{
#include<stdio.h>
%}
%%
\<[^>]*\> fprintf(yyout,"%s",yytext);
.|\n;
%%
int yywrap(){
return 1;
}
int main(int k,char **argcv){
yyin=fopen(argcv[1],"r");
yyout=fopen("output.txt","w");
yylex();
}