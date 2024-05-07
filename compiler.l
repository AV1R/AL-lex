%{
#include <stdio.h>
%}

%%
"//".*                 { printf("COMMENT\n"); }
"f"                    { printf("floatdcl\n"); }
"i"                    { printf("intdcl\n"); }
"p"                    { printf("print\n"); }
[a-zA-Z][a-zA-Z0-9_]*  { printf("id\n"); }
"="                    { printf("assign\n"); }
"+"                    { printf("plus\n"); }
"-"                    { printf("minus\n"); }
"*"                    { printf("times\n"); }
"/"                    { printf("division\n"); }
[0-9]+\.[0-9]+         { printf("fnum\n"); }
[0-9]+                 { printf("inum\n"); }
[ \t]+                 { /* ignorar espacios en blanco */ }
\n                     { /* ignorar nueva línea */ }
.                      { /* ignorar todo lo demás */ }
%%

int main() {
    yylex();
    return 0;
}

