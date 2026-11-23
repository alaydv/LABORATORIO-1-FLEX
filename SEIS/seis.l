%{
#include <stdio.h>
%}

%option noyywrap

%%
"if"        { printf("TOKEN: PALABRA_RESERVADA | LEXEMA: %s\n", yytext); }
"else"      { printf("TOKEN: PALABRA_RESERVADA | LEXEMA: %s\n", yytext); }
"while"     { printf("TOKEN: PALABRA_RESERVADA | LEXEMA: %s\n", yytext); }
"int"       { printf("TOKEN: PALABRA_RESERVADA | LEXEMA: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("TOKEN: IDENTIFICADOR      | LEXEMA: %s\n", yytext); }
[0-9]+                  { printf("TOKEN: NUMERO_ENTERO      | LEXEMA: %s\n", yytext); }

[ \t\r\n]+              { /* ignorar espacios en blanco */ }
.                       { printf("TOKEN: OTRO / SIMBOLO     | LEXEMA: %s\n", yytext); }
%%

int main(void) {
    printf("Ingresa codigo (Ctrl+D para terminar):\n");
    yylex();
    return 0;
}
