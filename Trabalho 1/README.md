# Instruções para o Makefile

**make** - Compila todos os Arquivos Fontes. **(Necessário realizar antes de qualquer outro make)**

**make oversubscription** - Executa o Script Bash do **primo_thread.c** de 2 à 128 Threads, de 2 a 2 e coloca o Resultado em Results.

**make guided | static | dynamic | sequential** - Executa o Script Selecionado ( Guided ou Static ou Dynamic ) e coloca o resultado em Results.

**make all** - Executa todos os Scripts ( Over, Guided, Static, Dynamic, Sequential ) e coloca os resultados separadamente em Results.

**make all-over** - Executa todos os Scripts exceto o Over ( Guided, Static, Dynamic , Sequential ) e coloca os resultados separadamente em Results.

**make clean** - Limpa os Arquivos Executáveis.
