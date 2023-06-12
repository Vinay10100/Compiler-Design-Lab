/*Design a LEX Code for Tokenizing (Identify and print OPERATORS,SEPARATORS,KEYWORDS,IDENTIFIERS)*/
%{
 int n=0;
%}
%%
"while"|"if"|"else" {n++; printf("\t keywords: %s",yytext);}
"int"|"float" {n++; printf("\t keywords: %s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {n++; printf("\t Identifier: %s",yytext);}
"<="|"=="|"="|"++"|"-"|"*"|"+""("|")"|"," {n++; printf("\t operator: %s",yytext);}
"{"|"}"|";" {n++; printf("\t Seperators: %s",yytext);}
-?[0-9]+"."[0-9]+ {n++; printf("\t Float %s",yytext);}
-?[0-9]+ {n++; printf("\t Integer: %s",yytext);}
. ;
%%
int yywrap(){
return 1;
}
int main()
{ 
yylex();
printf("\nTotal number of token = %d \n",n); 
}