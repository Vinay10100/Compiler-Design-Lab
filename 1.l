/*Design a LEX Code to count the number of lines, space, tab-meta character, and rest of characters in each Input pattern.*/

%{
#include<stdio.h>
int num_lines = 0, num_spaces = 0, num_tabs = 0, num_chars = 0;
%}

%%
\n num_lines++;
[ ] num_spaces++;
\t num_tabs++;
. num_chars++;
%%

int yywrap(){}

int main(){
yylex();
printf("\nSpaces = %d\n", num_spaces);
printf("\nTabs = %d\n", num_tabs);
printf("\nLines = %d\n", num_lines);
printf("\nCharacters = %d\n", num_chars);
return 0;
}





