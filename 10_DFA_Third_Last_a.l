/*Design a DFA in LEX Code which accepts string containing third last element 'a' over input alphabet {a,b}.*/
%{
#include<stdio.h>
%}
%s q1 q2 q3 q4 q5 q6 q7 DEAD
%%
<INITIAL>a BEGIN q1;
<INITIAL>b BEGIN INITIAL;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not accepted\n");}
<q1>a BEGIN q2;
<q1>b BEGIN q5;
<q1>[^ab\n] BEGIN DEAD;
<q1>\n BEGIN INITIAL; {printf("Not accepted\n");}
<q2>a BEGIN q3;
<q2>b BEGIN q4;
<q2>[^ab\n] BEGIN DEAD;
<q2>\n BEGIN INITIAL; {printf("Not accepted\n");}
<q3>a BEGIN q3;
<q3>b BEGIN q4;
<q3>\n BEGIN INITIAL; {printf("accepted\n");}
<q3>[^ba\n] BEGIN DEAD;
<q4>a BEGIN q6;
<q4>b BEGIN q7;
<q4>\n BEGIN INITIAL; {printf("accepted\n");}
<q4>[^ba\n] BEGIN DEAD;
<q5>a BEGIN q6;
<q5>b BEGIN q7;
<q5>[^ab\n] BEGIN DEAD;
<q5>\n BEGIN INITIAL; {printf("Not accepted\n");}
<q6>a BEGIN q2;
<q6>b BEGIN q5;
<q6>\n BEGIN INITIAL; {printf("accepted\n");}
<q6>[^ba\n] BEGIN DEAD;
<q7>a BEGIN q1;
<q7>b BEGIN INITIAL;
<q7>\n BEGIN INITIAL; {printf("accepted\n");}
<q7>[^ba\n] BEGIN DEAD;
<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}
%%
int yywrap()
{
return 1;
}
int main()
{
printf("Enter String\n");
yylex();
return 0;
}
