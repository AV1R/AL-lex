%{
#include <stdio.h>
%}

%%
"//".*                { printf("COMMENT\n"); }
"f"                   { printf("floatdcl\n"); }
"i"                   { printf("intdcl\n"); }
"p"                   { printf("print\n"); }
[a-zA-Z][a-zA-Z0-9]*  { printf("id\n"); }
"="                   { printf("assign\n"); }
"\+"                 { printf("plus\n"); }
[0-9]+.[0-9]+        { printf("fnum\n"); }
[0-9]+                { printf("inum\n"); }
[ \t]+                { /* ignore whitespace / }
\n                    { / ignore newline / }
.                     { / ignore everything else */ }
%%

int main() {
    yylex();
    return 0;
}
