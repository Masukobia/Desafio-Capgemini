Algoritmo "questao01"
// Escreva um algoritmo que mostre na tela uma escada de tamanho n
// utilizando o caractere * e espa�os.
// A base e altura da escada devem ser iguais ao valor de n.
// A �ltima linha n�o deve conter nenhum espa�o.

Var
// Se��o de Declara��es das vari�veis 
 v_retorno : caractere
 n : inteiro
 i, j, k: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  escreva ( "Digite um n�mero inteiro para montar uma escada de asterisco: ")
  leia (n) //Recebe o valor informado
  //Utiliza o valor informado como refer�ncia para montar a escada
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