Algoritmo "questao03"
//Duas palavras podem ser consideradas anagramas de si mesmas se as letras de
//uma palavra podem ser realocadas para formar a outra palavra. Dada uma string
// qualquer, desenvolva um algoritmo que encontre o n�mero de pares de
//substrings que s�o anagramas.
Var
// Se��o de Declara��es das vari�veis 
 v_palavra, v_parcial, v_anagrama: caractere
 v_tamanho, i, j, k, l, m, x: inteiro
 j_aux, k_aux, a_total, b_total, v_existe: inteiro
 a_aux, b_aux : caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
 escreval ("Digite uma palavra : ", v_palavra)
 //Recebe a palavra para verifica��o da quantidade de anagramas
 leia (v_palavra)
 x <- 0
 //Verifica o tamanho da palavra
 v_tamanho <- compr (v_palavra)
 //La�o de repeti��o para controlar a quantidade de intervalo de caracteres
 para i := 1 ate v_tamanho faca
   j_aux <- 1
   //Percorre a palavra dividindo em segmentos
   para j := i ate v_tamanho faca
     v_parcial <- copia (v_palavra; j_aux; i)
     k_aux <- j_aux
     //Percorre a palavra dividindo em segmentos para compara��o com o segmento
     //selecionado
     para k := j ate v_tamanho faca
       v_anagrama <- copia (v_palavra; k_aux; i)
       //Se os segmentos estiverem em posi��es diferentes, verifica se � anagrama
       se (k_aux <> j_aux) entao
         //Se o i for igual a 1 ir� comparar as letras
         se i = 1 entao
           //Se os segmentos forem iguais, � um anagrama
           se v_parcial = v_anagrama entao
             x <- x + 1
           fimse
         //Se o i for maior que 1 ir� comparar os segmentos
         senao
           //Se os segmentos n�o forem iguais faz a verifica��o de anagrama
           se v_parcial <> v_anagrama entao
             a_total <- 0
             b_total <- 0
             v_existe <- 0
             //Navega de caractere em caractere para comparar com segmento do anagrama
             para l := 1 ate compr (v_parcial) faca
               a_aux <- copia (v_parcial; l; 1)
               //Busca e soma o valor da tabela ascii para compara��o
               a_total <- a_total + asc (a_aux)
               //Percorre o segmento do anagrama
               para m := 1 ate compr (v_anagrama) faca
                 b_aux <- copia (v_anagrama; m; 1)
                 //Na primeira vez, busca e soma o valor da tabela ascii para compara��o
                 se l = 1 entao
                   b_total <- b_total + asc (b_aux)
                 fimse
                 //Se existir caracteres iguais, associa 1 para o verificador
                 se a_aux = b_aux entao
                   v_existe <- v_existe + 1
                 fimse
               fimpara
             fimpara
             //Compara o valor recebido com o tamanho do segmento
             se v_existe = compr (v_parcial) entao
               //Verifica se a soma dos dois segmentos s�o iguais
               se a_total = b_total entao
                 //Se forem iguais, incrementa 1 na quantidade
                 x <- x + 1
               fimse
             fimse
           fimse
         fimse
       fimse
       k_aux <- k_aux + 1
     fimpara
     j_aux <- j_aux + 1
   fimpara
 fimpara
 //Mostra o resultado da verifica��o
 escreval ("O n�mero de pares de anagramas � : ", x)
Fimalgoritmo