Algoritmo "questao02"
// D�bora se inscreveu em uma rede social para se manter em contato com seus
// amigos. A p�gina de cadastro exigia o preenchimento dos campos de nome e
//senha, por�m a senha precisa ser forte. O site considera uma senha forte
//quando ela satisfaz os seguintes crit�rios:
//Possui no m�nimo 6 caracteres.
//Cont�m no m�nimo 1 digito.
//Cont�m no m�nimo 1 letra em min�sculo.
//Cont�m no m�nimo 1 letra em mai�sculo.
//Cont�m no m�nimo 1 caractere especial. Os caracteres especiais s�o:
// !@#$%^&*()-+
//D�bora digitou uma string aleat�ria no campo de senha, por�m ela n�o tem
//certeza se � uma senha forte. Para ajudar D�bora, construa um algoritmo que
// informe qual � o n�mero m�nimo de caracteres que devem ser adicionados para
// uma string qualquer ser considerada segura

Var
// Se��o de Declara��es das vari�veis 
 v_senha, v_parcial : caractere
 v_tamanho, v_asc, v_retorno : inteiro
 v_mai, v_minus, v_num, v_esp, v_total, i, v_qtd_min, v_restricao: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  escreva ( "Digite uma senha: ")
  leia (v_senha)
  //Limpando as vari�veis
  v_retorno <- 0
  v_mai <- 0
  v_minus <- 0
  v_num <- 0
  v_esp <- 0
  v_total <- 0
  v_qtd_min <- 6 //Coloca quantidade m�nima de caracteres necess�rios
  v_restricao <- 4  //Coloca quantidade m�nima de restri��es necess�rias
  //Contagem do comprimento da senha
  v_tamanho <- compr (v_senha)
  se v_tamanho < v_qtd_min entao
    v_retorno <- v_qtd_min - v_tamanho
    escreval ("A senha n�o possui a quantidade m�nima de caracteres que � ", v_qtd_min)
  fimse
  para i := 1 ate v_tamanho faca
  //Retorna o valor da vari�vel v_senha a partir de i com 1 caractere
    v_parcial <- copia (v_senha, i, 1))
    //Testa as condi��es pr�-definidas no enunciado.Se tiver uma das condi��es
    //ent�o a vari�vel de cada condi��o vale 1
    escolha v_parcial
    //Verifica se possui letra mai�scula
    caso "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
      v_mai <- 1
    //Verifica se possui letra min�scula
    caso "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
      v_minus <- 1
    //Verifica se possui n�mero
    caso "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
      v_num <- 1
    //Verifica se possui caractere especial
    caso "!", "@", "#", "$", "%", "&", "*", "(", ")", "-", "+", "^"
      v_esp <- 1
    fimescolha
  fimpara
  //Se as vari�veis condicionais n�o estiverem suprindo as condi��es
  //ent�o exibe mensagem na tela indicando o que falta na senha e
  //armazena o valor para saber quantos caracteres faltam no total
  se v_mai = 0 entao
    escreval ("N�o h� letra mai�scula na senha")
    v_total <- v_total + 1
  fimse
  se v_minus = 0 entao
    escreval ("N�o h� letra min�scula na senha")
    v_total <- v_total + 1
  fimse
  se v_num = 0 entao
    escreval ("N�o h� n�mero na senha")
    v_total <- v_total + 1
  fimse
  se v_esp = 0 entao
    escreval ("N�o h� caractere especial na senha")
    v_total <- v_total + 1
  fimse
  //Se a quantidade de restri��es for maior que a quantidade de caracteres faltantes, calcula a quantidade  que falta
  se v_retorno < v_total entao
    v_retorno <- v_total - v_retorno
  fimse
  //Exibe o resultado da verifica��o
  se v_retorno > 0 entao
    escreva ("Falta(m) " ,v_retorno, " caractere(s) para a senha ser segura")
  senao
    escreva ("A senha � segura")
  fimse

Fimalgoritmo