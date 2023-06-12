%{
#include<stdio.h>
%}
%token num id
%left '+' '-'
%left '*' '/'
%%
S: E {printf("\n");}
 ;
E: E '+' E {printf("+");}
 | E '*' E {printf("*");}
 | E '-' E {printf("-");}
 | E '/' E {printf("/");}
 | '(' E ')'
 | num {printf("%d", yylval);}
 | id {printf("%c", yylval);}
 ;
%%
int main() 
{
printf("Enter the arithmetic expression: "); 
yyparse();
return 0;
}
int yyerror(char *s) 
{
printf("Error: %s\n", s);
return 0;
}