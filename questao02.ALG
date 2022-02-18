Algoritmo "questao02"
// Débora se inscreveu em uma rede social para se manter em contato com seus
// amigos. A página de cadastro exigia o preenchimento dos campos de nome e
//senha, porém a senha precisa ser forte. O site considera uma senha forte
//quando ela satisfaz os seguintes critérios:
//Possui no mínimo 6 caracteres.
//Contém no mínimo 1 digito.
//Contém no mínimo 1 letra em minúsculo.
//Contém no mínimo 1 letra em maiúsculo.
//Contém no mínimo 1 caractere especial. Os caracteres especiais são:
// !@#$%^&*()-+
//Débora digitou uma string aleatória no campo de senha, porém ela não tem
//certeza se é uma senha forte. Para ajudar Débora, construa um algoritmo que
// informe qual é o número mínimo de caracteres que devem ser adicionados para
// uma string qualquer ser considerada segura

Var
// Seção de Declarações das variáveis 
 v_senha, v_parcial : caractere
 v_tamanho, v_asc, v_retorno : inteiro
 v_mai, v_minus, v_num, v_esp, v_total, i, v_qtd_min, v_restricao: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  escreva ( "Digite uma senha: ")
  leia (v_senha)
  //Limpando as variáveis
  v_retorno <- 0
  v_mai <- 0
  v_minus <- 0
  v_num <- 0
  v_esp <- 0
  v_total <- 0
  v_qtd_min <- 6 //Coloca quantidade mínima de caracteres necessários
  v_restricao <- 4  //Coloca quantidade mínima de restrições necessárias
  //Contagem do comprimento da senha
  v_tamanho <- compr (v_senha)
  se v_tamanho < v_qtd_min entao
    v_retorno <- v_qtd_min - v_tamanho
    escreval ("A senha não possui a quantidade mínima de caracteres que é ", v_qtd_min)
  fimse
  para i := 1 ate v_tamanho faca
  //Retorna o valor da variável v_senha a partir de i com 1 caractere
    v_parcial <- copia (v_senha, i, 1))
    //Testa as condições pré-definidas no enunciado.Se tiver uma das condições
    //então a variável de cada condição vale 1
    escolha v_parcial
    //Verifica se possui letra maiúscula
    caso "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
      v_mai <- 1
    //Verifica se possui letra minúscula
    caso "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
      v_minus <- 1
    //Verifica se possui número
    caso "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
      v_num <- 1
    //Verifica se possui caractere especial
    caso "!", "@", "#", "$", "%", "&", "*", "(", ")", "-", "+", "^"
      v_esp <- 1
    fimescolha
  fimpara
  //Se as variáveis condicionais não estiverem suprindo as condições
  //então exibe mensagem na tela indicando o que falta na senha e
  //armazena o valor para saber quantos caracteres faltam no total
  se v_mai = 0 entao
    escreval ("Não há letra maiúscula na senha")
    v_total <- v_total + 1
  fimse
  se v_minus = 0 entao
    escreval ("Não há letra minúscula na senha")
    v_total <- v_total + 1
  fimse
  se v_num = 0 entao
    escreval ("Não há número na senha")
    v_total <- v_total + 1
  fimse
  se v_esp = 0 entao
    escreval ("Não há caractere especial na senha")
    v_total <- v_total + 1
  fimse
  //Se a quantidade de restrições for maior que a quantidade de caracteres faltantes, calcula a quantidade  que falta
  se v_retorno < v_total entao
    v_retorno <- v_total - v_retorno
  fimse
  //Exibe o resultado da verificação
  se v_retorno > 0 entao
    escreva ("Falta(m) " ,v_retorno, " caractere(s) para a senha ser segura")
  senao
    escreva ("A senha é segura")
  fimse

Fimalgoritmo