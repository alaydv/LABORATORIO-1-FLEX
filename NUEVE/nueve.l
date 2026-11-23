%{
#include <stdio.h>

int freq[10] = {0};
%}

%option noyywrap

%%
[0-9]       { freq[yytext[0] - '0']++; }
.|\n        { /* ignorar el resto de caracteres */ }
%%

int main(void) {
    yylex();

    printf("| Digito | Frecuencia  |\n");
    printf("+--------+-------------+\n");
    for (int i = 0; i < 10; i++) {
        printf("|   %d    | %11d |\n", i, freq[i]);
    }
    return 0;
}
