Algoritmo "Calculadora de manutenção para veiculos"
// Disciplina: [Algoritmo e Programaçao 1]
// Descrição: Aqui você descreve o que o programa faz! (função)
// Autores: felipe, claiton, marco túlio

Var
   modelo: logico // verdadeiro = carro | falso = moto
   marca: inteiro // marca do veiculo do cliente
   combust, kml, kmpd, oleo, pastilha, filtroar, oleofreio, relacao, flex, cilin: real
   u, k, i , j , veic , temp , dist , kilo: inteiro
   v: vetor  [1..6] de caracter // vetor para exibir as marcas dos veiculos
   M: vetor [1..6,1..11] de real // tabela final para exibir dados da manutencao do veiculo

   //variaveis para interface
   //tabelaInterface: vetor [1..8,1..11] de caractere
   Int_TipoCombust: caractere
   Int_Marca: caractere
   Int_MarcaM: caractere


   // ATENCAO - EXECUTAR EM TELA CHEIA PARA MELHOR EXPERIENCIA
   // ATENCAO - EXECUTAR EM TELA CHEIA PARA MELHOR EXPERIENCIA
Inicio
   k<-1
   j<-1

   enquanto (j<=11) faca
      M[1,j]<- j
      j<- j+1
   fimenquanto

   escreval("                                                                               #####    #####   ####      #####   ##   ##          #####    #####   ######")
   escreval("                                                                              ##   ##  ##   ##   ##      ##   ##  ##   ##         ##   ##  ##   ##  ##   ##")
   escreval("                                                                              ##       ##   ##   ##      ##       ##   ##         ##       ##   ##  ##   ##")
   escreval("                                                                              ##       #######   ##      ##       ##   ##   ##    ##       #######  ######")
   escreval("                                                                              ##       ##   ##   ##      ##       ##   ##         ##       ##   ##  ## ##")
   escreval("                                                                              ##   ##  ##   ##   ##  ##  ##   ##  ##   ##         ##   ##  ##   ##  ##  ##")
   escreval("                                                                               #####   ##   ##   ######   #####    #####          #####   ##   ##  ##   ##")
   escreval("")
   escreval("                                                                                               Mantendo a Eficiência, Calculando com Precisão!")
   escreval("")
   escreval("")
   escreval("")
   escreval("                                                                                       +---------------------------------------------------------+")
   escreval("                                                                                       |                                                         |")
   escreval("                                                                                       |   Para quantos veículos deseja calcular a manutenção?   |")
   escreval("                                                                                       |                                                         |")
   escreval("                                                                                       +---------------------------------------------------------+")
   escreva("                                                                                       > Entrada: ")

   // inicio tratamento de erro
   repita
      leia(veic)
      se ((veic>5) ou (veic<1)) entao
         escreval("")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        |  Opção inválida, tente novamente um número de 1 a 5!  |")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreva("                                                                                        > Entrada: ")
      senao
         u <- 1
      fimse
   ate(u=1)
   // fim tratamento de erro


   para i de 2 ate (veic+1) passo 1 faca
      escreval("")
      escreval("                                                                                    +---------------------------------------------------------------+")
      escreval("                                                                                    |                                                               |")
      escreval("                                                                                    |        Para qual veículo deseja calcular a manutenção?        |")
      escreval("                                                                                    |                                                               |")
      escreval("                                                                                    |---------------------------------------------------------------|")
      escreval("                                                                                    |  Verdadeiro para carro   |     OU      |     Falso para moto  |")
      escreval("                                                                                    +---------------------------------------------------------------+")
      escreva("                                                                                    > Entrada: ")
      leia(modelo)
      se(modelo=verdadeiro) entao

         v[1]<- "1. Volkswagem"
         v[2]<- "2. Chevrolet"
         v[3]<- "3. Fiat"
         v[4]<- "4. Toyota"
         v[5]<- "5. Hyundai"

         escreval("")
         escreval("                                                                                                      +----------------------------+")
         escreval("                                                                                                      |    Marcas disponiveis:     |")
         escreval("                                                                                                      +----------------------------+")
         enquanto (k<6) faca
            escreval("                                                                                                               ", v[k])
            k<- k+1
         fimenquanto
         escreval("                                                                                                      +----------------------------+")
         escreval("                                                                                                      | Qual a marca de seu carro? |")
         escreval("                                                                                                      +----------------------------+")
         escreva("                                                                                                      > Escolha um item do menu: ")
         // inicio tratamento de erro
         repita
            leia(marca)
            se ((marca<6) e (marca>0)) entao
               M[i,1] <- marca
               u<- 2 // u é a bandeira para sair do laço
            senao
               escreval("")
               escreval("                                                                                                  +------------------------------------+")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  |  Opção inválida, tente novamente!  |")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  +------------------------------------+")
               escreva("                                                                                                  > Entrada: ")
            fimse
         ate(u=2)
         // fim do tratamento de erro



         escreval("")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        |           Qual combustível seu carro utiliza?         |")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 1   |               Gasolina                 |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 2   |               Etanol                   |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 3   |               Flex                     |")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreva("                                                                                        > Escolha um item do menu:  ")
         // inicio tratamento de erro
         repita
            leia(flex)
            escolha(flex)
            caso 1
               M[i,2]<- 1
               u<-3 // u é a bandeira para sair do laço
               Int_TipoCombust <- "     Gasolina      "
            caso 2
               M[i,2]<- 2
               u<-3
               Int_TipoCombust <- "       Etanol      "
            caso 3
               M[i,2]<- 3
               u<-3
               Int_TipoCombust <- "        Flex       "
            outrocaso
               escreval("")
               escreval("                                                                                                  +------------------------------------+")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  |  Opção inválida, tente novamente!:)|")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  +------------------------------------+")
               escreva("                                                                                                  > Entrada: ")
            fimescolha
         ate(u=3)
         // fim do tratamento de erro



         escreval("")
         escreval("                                                                                   +-----------------------------------------------------------------+")
         escreval("                                                                                   |                                                                 |")
         escreval("                                                                                   |  Quantos litros você abasteceu da última vez que foi ao posto?  |")
         escreval("                                                                                   |                                                                 |")
         escreval("                                                                                   +-----------------------------------------------------------------+")
         escreva("                                                                                   > Entrada: ")
         // inicio tratamento de erro
         repita
            leia(combust)
            se((combust<=70) e(combust>0)) entao
               M[i,3]<- combust
               u<-4
            senao
               escreval("")
               escreval("                                                                                   +-----------------------------------------------------------------+")
               escreval("                                                                                   |                                                                 |")
               escreval("                                                                                   |  Você ultrapassou a capacidade máxima permitida, tente um       |")
               escreval("                                                                                   |           positivo entre 0 a 70 e tente novamente.              |")
               escreval("                                                                                   |                                                                 |")
               escreval("                                                                                   +-----------------------------------------------------------------+")
               escreva("                                                                                   > Entrada: ")
            fimse
         ate(u=4)
         // fim do tratamento de erro



         escreval("")
         escreval("                                                                                                +--------------------------------------+")
         escreval("                                                                                                |                                      |")
         escreval("                                                                                                |  Quantos quilômetros você percorreu? |")
         escreval("                                                                                                |                                      |")
         escreval("                                                                                                +--------------------------------------+")
         escreva("                                                                                                > Entrada: ")
         // inicio tratamento de erro
         repita
            leia(dist)
            se ((dist<1060) e (dist>0)) entao
               u <- 5  // u é a bandeira para sair do laço
            senao
               escreval("")
               escreval("                                                                                        +-------------------------------------------------------+")
               escreval("                                                                                        |                                                       |")
               escreval("                                                                                        |  Você ultrapassou a quilometragem máxima que o tanque |")
               escreval("                                                                                        |      cheio faz ou o valor é inválido. Positivo        |")
               escreval("                                                                                        |        entre 0,5 a 1060 e tente novamente...          |")
               escreval("                                                                                        |                                                       |")
               escreval("                                                                                        +-------------------------------------------------------+")
               escreva("                                                                                        > Entrada: ")
            fimse
         ate(u=5)
         // fim do tratamento de erro



         escreval("")
         escreval("                                                                                           +-----------------------------------------------+")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           |   Em quantos dias você percorreu esses Km's?  |")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           +-----------------------------------------------+")
         escreva("                                                                                           > Entrada: ")
         // inicio tratamento de erro
         repita
            leia(temp)
            se (temp>0) entao
               u <- 6 // u é a bandeira para sair do laço
            senao
               escreval("")
               escreval("                                                                                       +------------------------------------------------------+")
               escreval("                                                                                       |                                                      |")
               escreval("                                                                                       |  Você inseriu um número de dias que não é possivel.  |")
               escreval("                                                                                       |     Positivo entre 0,5 a 70 e tente novamente...     |")
               escreval("                                                                                       |                                                      |")
               escreval("                                                                                       +------------------------------------------------------+")
               escreva("                                                                                        > Entrada: ")
            fimse
         ate(u=6)
         // fim do tratamento de erro


         kml <- dist/combust
         M[i,4] <- kml
         kmpd <- dist/temp
         M[i,5] <- kmpd



         escreval("")
         escreval("                                                                                         +---------------------------------------------------+")
         escreval("                                                                                         |                                                   |")
         escreval("                                                                                         |    Segundo a informação do painel do veiculo:     |")
         escreval("                                                                                         |    Quantos quilômetros o seu carro percorreu?     |")
         escreval("                                                                                         |                                                   |")
         escreval("                                                                                         +---------------------------------------------------+")
         escreva("                                                                                         > Entrada: ")
         // inicio tratamento de erro
         repita
            leia(kilo)
            se (kilo>0)entao
               u <- 7  // u é a bandeira para sair do laço
            senao
               escreval("")
               escreval("                                                                                            +---------------------------------------------+")
               escreval("                                                                                            |                                             |")
               escreval("                                                                                            |              Número Inválido!               |")
               escreval("                                                                                            |   Tente novamente com um número positivo.   |")
               escreval("                                                                                            |                                             |")
               escreval("                                                                                            +---------------------------------------------+")
               escreva("                                                                                            > Entrada: ")
            fimse
         ate (u=7)
         // fim do tratamento de erro



         escreval("")
         escreval("                                                                                           +-----------------------------------------------+")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           |   Qual a cilindrada do motor de seu carro??   |")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           +-----------------------------------------------+")
         escreva("                                                                                           > Entrada: ")
         // inicio tratamento de erro
         repita
            leia(cilin)
            se((cilin<=8) e (cilin>0)) entao
               M[i,6] <- cilin
               u <- 8
            senao
               escreval("")
               escreval("                                                                                 +-----------------------------------------------------------------+")
               escreval("                                                                                 |                                                                 |")
               escreval("                                                                                 |  Você ultrapassou o máximo de cilindrada que um carro consegue  |")
               escreval("                                                                                 |            atingir ou inseriu um número inválido.               |")
               escreval("                                                                                 |                                                                 |")
               escreval("                                                                                 +-----------------------------------------------------------------+")
               escreva("                                                                                 > Entrada: ")
            fimse
         ate(u=8)
         // fim do tratamento de erro



         //oleo-motor
         se (kilo<5000) entao
            oleo <-(5000-kilo)/kmpd
            M[i,7] <-oleo
         senao
            oleo<-(kilo%5000)/kmpd
            M[i,7] <-oleo
         fimse


         //pastilha-freio
         se(kilo<30000) entao
            pastilha<-(30000-kilo)/kmpd
            M[i,8] <- pastilha
         senao
            pastilha<-(kilo%30000)/kmpd
            M[i,8] <- pastilha
         fimse


         //filtro-ar
         se(kilo<10000) entao
            filtroar <- (10000-kilo)/kmpd
         senao
            filtroar <- (kilo%10000)/kmpd
         fimse
            M[i,9] <- filtroar


         //fluido-freio
         se( kilo<20000) entao
            oleofreio<-(20000-kilo)/kmpd
            M[i,10]<- oleofreio
         senao
            oleofreio<-(kilo%20000)/kmpd
            M[i,10]<- oleofreio
         fimse

         M[i,11] <- 0


         // como a variavel Marca que esta sendo lida é do tipo inteira, precisamos
         // converter para caractere e assim poder imprimir na interface.
         escolha (marca)
         caso 1
            Int_Marca <- "Volkswagem"

         caso 2
            Int_Marca <- "Chevrolet "
         caso 3

            Int_Marca <- "   Fiat   "
         caso 4

            Int_Marca <- "  Toyota  "
         caso 5

            Int_Marca <- "  Hyundai "

         fimescolha




         // imprimir as entradas(leia) do usuario.
         escreval("")
         escreval("")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("             |                                                                                             Tabela de Entradas do Cliente #",(i-1),"                                                                               |")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("             | N do Veículo  | Tipo de Veículo |   Modelo   | Tipo de Combustível | Qtd ultimo abastecimento |   Km percorrido   |  Dias percorridos nesses KM's  |  Quilometragem total do veículo  |  Cilindrada do veículo |")
         escreval("             +---------------|-----------------|------------|---------------------|--------------------------|-------------------|--------------------------------|----------------------------------|------------------------+")
         escreval("             |      ",(i-1),"       |      Carro      | ",Int_Marca," | ",Int_TipoCombust," |       ",combust," Litro(s)       |     ",dist," Km's      |            ",temp," dias            |            ",kilo," Km's           |          ",cilin,"          |")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("")
         escreval("")


         //Aqui vai entrar caso o modelo for (Falso <- moto)
         //Aqui vai entrar caso o modelo for (Falso <- moto)
         //Aqui vai entrar caso o modelo for (Falso <- moto)
         k<-1
      senao


         v[1]<- "1. Honda"
         v[2]<- "2. Yamaha"
         v[3]<- "3. Triumph"
         v[4]<- "4. Bmw"
         v[5]<- "5. Kawasaki"

         escreval("")
         escreval("                                                                                                      +----------------------------+")
         escreval("                                                                                                      |    Marcas disponiveis:     |")
         escreval("                                                                                                      +----------------------------+")
         enquanto (k<6) faca
            escreval("                                                                                                                ", v[k])
            k<- k+1
         fimenquanto
         escreval("                                                                                                      +----------------------------+")
         escreval("                                                                                                      | Qual a marca da sua moto?  |")
         escreval("                                                                                                      +----------------------------+")
         escreva("                                                                                                      > Escolha um item do menu: ")


         //inicio do tratamento de erro
         repita
            leia(marca)
            se((marca<6) e (marca>0)) entao
               M[i,1]<- marca
               u <-1 // u é a bandeira para sair do laço
            senao
               escreval("")
               escreval("                                                                                                  +------------------------------------+")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  |  Opção invalida, tente novamente!  |")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  +------------------------------------+")
               escreva("                                                                                                  > Entrada: ")
            fimse
         ate(u=1)
         //fim do tratamento de erro


         escreval("")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        |           Qual combustível sua moto utiliza?          |")
         escreval("                                                                                        |                                                       |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 1   |               Gasolina                 |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 2   |               Etanol                   |")
         escreval("                                                                                        |-------------------------------------------------------|")
         escreval("                                                                                        |   Digite 3   |               Flex                     |")
         escreval("                                                                                        +-------------------------------------------------------+")
         escreva("                                                                                        > Escolha um item do menu:  ")
         repita
            leia(flex)
            escolha(flex)
            caso 1
               M[i,2]<- 1 // u é a bandeira para sair do laço
               Int_TipoCombust <- "     Gasolina      "
               u<- 2
            caso 2
               M[i,2]<- 2
               Int_TipoCombust <- "       Etanol      "
               u<- 2
            caso 3
               M[i,2]<- 98
               Int_TipoCombust <- "        Flex       "
               u<-2
            outrocaso
               escreval("")
               escreval("                                                                                                  +------------------------------------+")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  |  Opção inválida, tente novamente!  |")
               escreval("                                                                                                  |                                    |")
               escreval("                                                                                                  +------------------------------------+")
               escreva("                                                                                                  > Entrada: ")
            fimescolha
         ate(u=2)

         escreval("")
         escreval("                                                                                   +-----------------------------------------------------------------+")
         escreval("                                                                                   |                                                                 |")
         escreval("                                                                                   |  Quantos litros você abasteceu da última vez que foi ao posto?  |")
         escreval("                                                                                   |                                                                 |")
         escreval("                                                                                   +-----------------------------------------------------------------+")
         escreva("                                                                                   > Entrada: ")


         //inicio do tratamento de erro
         repita
            leia(combust)
            se ((combust <= 30) e (combust > 0)) entao
               M[i,3]<- combust
               u <- 3
            senao
               escreval("")
               escreval("                                                                                   +-----------------------------------------------------------------+")
               escreval("                                                                                   |                                                                 |")
               escreval("                                                                                   |  Você ultrapassou a capacidade máxima permitida, insira um      |")
               escreval("                                                                                   |         positivo entre 0,5 a 30 e tente novamente!              |")
               escreval("                                                                                   |                                                                 |")
               escreval("                                                                                   +-----------------------------------------------------------------+")
               escreva("                                                                                   > Entrada: ")
            fimse
         ate(u=3)
         //fim do tratamento de erro



         escreval("")
         escreval("                                                                                                +--------------------------------------+")
         escreval("                                                                                                |                                      |")
         escreval("                                                                                                |  Quantos quilômetros você percorreu? |")
         escreval("                                                                                                |                                      |")
         escreval("                                                                                                +--------------------------------------+")
         escreva("                                                                                                > Entrada: ")
         //inicio do tratamento de erro
         repita
            leia(dist)
            se ((dist <= 800 ) e (dist > 0)) entao
               u<-4
            senao
               escreval("")
               escreval("                                                                                        +-------------------------------------------------------+")
               escreval("                                                                                        |                                                       |")
               escreval("                                                                                        |  Você ultrapassou a quilmetragem máxima que o tanque  |")
               escreval("                                                                                        |      cheio faz ou o valor é inválido. Positivo        |")
               escreval("                                                                                        |        entre 0,5 a 800 e tente novamente...           |")
               escreval("                                                                                        |                                                       |")
               escreval("                                                                                        +-------------------------------------------------------+")
               escreva("                                                                                        > Entrada: ")
            fimse
         ate(u=4)
         //fim do tratamento de erro



         escreval("")
         escreval("                                                                                           +-----------------------------------------------+")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           |   Em quantos dias você percorreu esses Km's?  |")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           +-----------------------------------------------+")
         escreva("                                                                                           > Entrada: ")
         //inicio do tratamento de erro
         repita
            leia(temp)
            se (temp > 0) entao
               u<-5
            senao
               escreval("")
               escreval("                                                                                       +------------------------------------------------------+")
               escreval("                                                                                       |                                                      |")
               escreval("                                                                                       |  Você inseriu um número de dias que não é possivel.  |")
               escreval("                                                                                       |      Insira um número positivo e tente novamente!  |")
               escreval("                                                                                       |                                                      |")
               escreval("                                                                                       +------------------------------------------------------+")
               escreva("                                                                                       > Entrada: ")
            fimse
         ate(u=5)
         //fim do tratamento de erro

         kml <- dist/combust
         kmpd <- dist/temp

         M[i,4] <- kml
         M[i,5] <- kmpd



         escreval("")
         escreval("                                                                                         +---------------------------------------------------+")
         escreval("                                                                                         |                                                   |")
         escreval("                                                                                         |    Segundo a informação do painel do veiculo:     |")
         escreval("                                                                                         |    Quantos quilômetros o seu carro percorreu?     |")
         escreval("                                                                                         |                                                   |")
         escreval("                                                                                         +---------------------------------------------------+")
         escreva("                                                                                         > Entrada: ")
         //inicio do tratamento de erro
         repita
            leia(kilo)
            se (kilo > 0) entao
               u<-6
            senao
               escreval("")
               escreval("                                                                                            +---------------------------------------------+")
               escreval("                                                                                            |                                             |")
               escreval("                                                                                            |              Número Inválido!               |")
               escreval("                                                                                            |   Tente novamente com um número positivo.   |")
               escreval("                                                                                            |                                             |")
               escreval("                                                                                            +---------------------------------------------+")
               escreva("                                                                                            > Entrada: ")
            fimse
         ate(u=6)
         //fim do tratamento de erro



         escreval("")
         escreval("                                                                                           +-----------------------------------------------+")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           |    Qual a cilindrada do motor da sua moto?    |")
         escreval("                                                                                           |                                               |")
         escreval("                                                                                           +-----------------------------------------------+")
         escreva("                                                                                           > Entrada: ")
         //inicio do tratamento de erro
         repita
            leia(cilin)
            se ((cilin <= 2000) e (cilin > 0)) entao
               M[i,6]<-cilin
               u<-7
            senao
               escreval("")
               escreval("                                                                                 +-----------------------------------------------------------------+")
               escreval("                                                                                 |                                                                 |")
               escreval("                                                                                 |  Você ultrapassou o máximo de cilindrada que uma moto consegue  |")
               escreval("                                                                                 |            atingir ou inseriu um número inválido.               |")
               escreval("                                                                                 |                                                                 |")
               escreval("                                                                                 +-----------------------------------------------------------------+")
               escreva("                                                                                 > Entrada: ")
            fimse
         ate(u=7)
         //fim do tratamento de erro


         //oleo-motor
         se (kilo<5000) entao
            oleo<-(5000-kilo)/kmpd
            M[i,7]<-oleo
         senao
            oleo<-(kilo%5000)/kmpd
            M[i,7]<-oleo
         fimse


         //pastilha-freio
         se(kilo<30000) entao
            pastilha<-(30000-kilo)/kmpd
            M[i,8] <-pastilha
         senao
            pastilha<-(kilo%30000)/kmpd
            M[i,8] <-pastilha
         fimse

         //filtro-ar
         se(kilo<10000) entao
            filtroar<- (10000-filtroar)/kmpd
            M[i,9]<-filtroar
         senao
            filtroar<- (kilo%10000)/kmpd
            M[i,9]<-filtroar
         fimse


         //fluido-freio
         se( kilo<20000) entao
            oleofreio<-(20000-kilo)/kmpd
            M[i,10]<-oleofreio
         senao
            oleofreio<-(kilo%20000)/kmpd
            M[i,10]<-oleofreio
         fimse

         //relação
         se(kilo<30000) entao
            relacao<- (30000-kilo)/kmpd
            M[i,11]<-relacao
         senao
            relacao<-(kilo%30000)/kmpd
            M[i,11]<-relacao
         fimse




         // como a variavel Marca que esta sendo lida é do tipo inteira, precisamos
         // converter para caractere e assim poder imprimir na interface.
         escolha (marca)
         caso 1
            Int_MarcaM <- "  Honda   "
         caso 2

            Int_MarcaM <- "  Yamaha  "
         caso 3

            Int_MarcaM <- " Triumph  "
         caso 4

            Int_MarcaM <- "    BMW   "
         caso 5

            Int_MarcaM <- " Kawasaki "
         fimescolha

         // imprimir as entradas(leia) do usuario.
         escreval("")
         escreval("")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("             |                                                                                             Tabela de Entradas do Cliente #",(i-1),"                                                                               |")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("             | N do Veículo  | Tipo de Veículo |   Modelo   | Tipo de Combustível | Qtd ultimo abastecimento |   Km percorrido   |  Dias percorridos nesses KM's  |  Quilometragem total do veículo  |  Cilindrada do veículo |")
         escreval("             +---------------|-----------------|------------|---------------------|--------------------------|-------------------|--------------------------------|----------------------------------|------------------------+")
         escreval("             |      ",(i-1),"       |      Moto       | ",Int_MarcaM," | ",Int_TipoCombust," |       ",combust," Litro(s)       |     ",dist," Km's      |            ",temp," dias            |            ",kilo," Km's           |          ",cilin:2:2,"          |")
         escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
         escreval("")
         escreval("")

      fimse
      k <-1
   fimpara



   escreval("")
   escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
   escreval("             |                                                                                                                                                                                                                |")
   escreval("             |                                                                                               Tabela - Manutenção                                                                                              |")
   escreval("             |                                                                                                                                                                                                                |")
   escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
   escreval("             |                                                                                                    Descrição                                                                                                   |")
   escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
   escreval("             |  Na coluna 1.0 é exibido a marca do veículo.                                                                        | CARRO  1: Volkswagem | 2: Chevrolet | 3: Fiat    | 4: Toyota | 5: Hyundai                |")
   escreval("             |                                                                                                                     | MOTO   1: Honda      | 2: Yamaha    | 3: Triumph | 4: Bmw    | 5: Kawasaki               |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 2.0 é exibido o tipo de combustível que o veículo utiliza.                                               | TIPO   1: Gasolina   | 2: Etanol    | 3: Flex                                            |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 3.0 é exibido a quantidade de litros que o cliente abasteceu pela ultima vez que foi ao posto.           |                                                                                          |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 4.0 é exibido a média de quilometros percurridos com 1 litro de combustivel.                             |                                                                                          |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 5.0 é exibido a quantidade de quilometros que usuario percorreu por dia.                                 |                                                                                          |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 6.0 é exibido a cilindrada do motor do veículo do cliente.                                               |                                                                                          |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 7.0 é exibido quando será a próxima troca do óleo do motor (em dias).                                    | (se o valor for zero, é necessario a troca)                                              |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 8.0 é exibido quando será a próxima troca da pastilha de freio (em dias).                                | (se o valor for zero, é necessario a troca)                                              |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 9.0 é exibido quando será a próxima troca do filtro de ar (em dias).                                     | (se o valor for zero, é necessario a troca)                                              |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 10.0 é exibido quando será a próxima troca do óleo do freio (em dias).                                   | (se o valor for zero, é necessario a troca)                                              |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             |  Na coluna 11.0 é exibido quando será a próxima troca da relação da moto (em dias). (É exibido somente se for moto) | (se o valor for zero, é necessario a troca)                                              |")
   escreval("             |                                                                                                                     |                                                                                          |")
   escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")
   escreval("             |                                                                                                                                                                                                                |")
   escreval("             |                                                                                                      Resultado                                                                                                 |")
   escreval("             |                                                                                                                                                                                                                |")
   escreval("             +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+")

   // exibe os dados da manutencao do veiculo solicitado
   // se os valores da coluna 7 ate 11 zerar, é porque esta na hora de efetuar as trocas.
   para i de 1 ate (veic+1) faca
      escreval("")
      para j de 1 ate 11 faca
            escreva("          ",m[i,j]:9:2, " ")
      fimpara
   fimpara

   escreval("")
   escreval("")
Fimalgoritmo