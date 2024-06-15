

--FORMÚLAS DAX

1- dia da semana = WEEKDAY('Calendario[Data]; 1)  // IRÁ CRIAR UMA COLUNA COM O DIA DA SEMANA

2- vencimento do boleto = EOMONTH('Base Vendas 2016 - 2018'[Data da venda];0) // IRÁ CRIAR UMA COLUNA COM DATA DE VENCIMENTO DAQUELE MÊS

3- Idade do Cliente = DATEDIFF('Cadastro Clientes'[Data de Nascimento],TODAY(),YEAR) // IRÁ CRIAR UMA COLUNA PARA REALIZAR E CALCULAR A IDADE DO CLIENTE

4- Categoria de Cliente = IF('Cadastro Clientes'[Idade do Cliente] > 40,"Categoria 1","Categoria 2") // CRIANDO UMA COLUNA PARA SABER SE CATEGORIA CLIENTE > 40
 = CATEGORIA 1 SENÃO SERÁ CATEGORIA 2
 
5- Categoria de Cliente = IF('Cadastro Clientes'[Idade do Cliente] >= 60,"Categoria 1", IF( 'Cadastro Clientes'[Idade do Cliente] >=45, "Categoria 2 ", 
IF('Cadastro Clientes'[Idade do Cliente] >=30 , "Categoria 3", "Categoria 4" ))) // FUNÇÃO IF COMPOSTA ANINHADA // VARIOS IF

6- Final de semana = IF(OR('Calendário'[Dia da semana] = 1, 'Calendário'[Dia da semana] = 7 ), "Final de semana","Dia de semana") // PARA PODERMOS CRIAR DUAS CONDIÇÕES USAMOS O OR
// PARA FAZERMOS UMA COLUNA PARA SABERMOS SE É DIA DA SEMANA OU FINAL DE SEMANA.

7- Final de semana = IF('Calendário'[Dia da semana] = 1 || 'Calendário'[Dia da semana] = 7 , "Fim de semana", "Dia de semana")  // SEGUNDA FORMA DE FAZER MAIS PRATICO AO INVES USAR O OR USAR AS ||
// PARA CRIAR UMA COLUNA PARA ANALISE DE DIA DA SEMANA OU FIM DE SEMANA.

8- Promoção dia das Mães = IF (AND('Cadastro Clientes'[Sexo] = "Feminino", 'Cadastro Clientes'[Idade do Cliente] >=50), "SIM","NÃO")
// PARA CRIAR UMA CONDIÇÃO -  PARA AS CONDIÇÃO SEXO E IDADE`> = 50, IRÁ ENTRAR NA PROMOÇÃO.

9- Promoção dia das Mães = IF('Cadastro Clientes'[Sexo] = "Feminino" && 'Cadastro Clientes'[Idade do Cliente] >= 50 ,"Sim","Não")
// OUTRA FORMA DE FAZER AND USANDO &&



