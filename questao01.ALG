Algoritmo "questao01"
// Escreva um algoritmo que mostre na tela uma escada de tamanho n
// utilizando o caractere * e espaços.
// A base e altura da escada devem ser iguais ao valor de n.
// A última linha não deve conter nenhum espaço.

Var
// Seção de Declarações das variáveis 
 v_retorno : caractere
 n : inteiro
 i, j, k: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  escreva ( "Digite um número inteiro para montar uma escada de asterisco: ")
  leia (n) //Recebe o valor informado
  //Utiliza o valor informado como referência para montar a escada
  para i := 1 ate n faca
    v_retorno <- ""
    //Executa a rotina para montar a escada
    para j := n ate 1 passo -1 faca
      se j <= i entao
        v_retorno <- v_retorno + "*"
      senao
        v_retorno <- v_retorno + " "
      fimse
    fimpara
    //Mostra o resultado
    escreval (v_retorno)
  fimpara
Fimalgoritmo