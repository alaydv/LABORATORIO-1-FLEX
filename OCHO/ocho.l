%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%
[A-Z]       { putchar(tolower((unsigned char)yytext[0])); }
.|\n        { putchar(yytext[0]); }
%%

int main(void) {
    yylex();
    return 0;
}
