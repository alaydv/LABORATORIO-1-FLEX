%{
#include <stdio.h>
%}

%option noyywrap

%%
"<="        { printf("OPERADOR RELACIONAL (menor o igual que): %s\n", yytext); }
">="        { printf("OPERADOR RELACIONAL (mayor o igual que): %s\n", yytext); }
"=="        { printf("OPERADOR RELACIONAL (igualdad):        %s\n", yytext); }
"!="        { printf("OPERADOR RELACIONAL (desigualdad):     %s\n", yytext); }
"<"         { printf("OPERADOR RELACIONAL (menor que):         %s\n", yytext); }
">"         { printf("OPERADOR RELACIONAL (mayor que):         %s\n", yytext); }

"+"         { printf("OPERADOR ARITMETICO (suma):            %s\n", yytext); }
"-"         { printf("OPERADOR ARITMETICO (resta):           %s\n", yytext); }
"*"         { printf("OPERADOR ARITMETICO (multiplicacion):  %s\n", yytext); }
"/"         { printf("OPERADOR ARITMETICO (division):        %s\n", yytext); }

[ \t\r\n]+  { /* ignorar espacios en blanco y saltos de linea */ }
.           { /* ignorar otros caracteres */ }
%%

int main(void) {
    yylex();
    return 0;
}
