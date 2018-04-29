#Importando bibliotecas
library(jsonlite)
library(ggplot2)
library(readxl)
library(dplyr)
Sys.setlocale("LC_ALL", "pt_BR.utf-8")

#Perfis Linguística
perfisLinguistica <- read_json('unb.Perfis.Linguistica.json')
names(perfisLinguistica)
names(perfisLinguistica$"0037568024594010")
length(perfisLinguistica)
senioridade <- sapply(perfisLinguistica, function(x) x$senioridade)
num_orientacoes <- sapply(perfisLinguistica, function(x) length(x$orientacoes_academicas))
data <- data.frame(num_orientacoes, senioridade)
ggplot(data, aes(x=senioridade, y=num_orientacoes)) + geom_bar(stat="identity", fill="#adbce6")

#Orientações Linguística
orientacoesLinguistica <- read_json('unb.Orientacao.Linguistica.json')
orientacoesLinguistica.df <- data.frame()
orientacoesLinguistica.tipo.df <- data.frame()
for(i in 1:length(orientacoesLinguistica[[1]]))
  orientacoesLinguistica.tipo.df <- rbind(orientacoesLinguistica.tipo.df, orientacoesLinguistica$ORIENTACAO_CONCLUIDA_DOUTORADO[[i]])
orientacoesLinguistica.df <- rbind(orientacoesLinguistica.df, orientacoesLinguistica.tipo.df)

select(orientacoesLinguistica.df, titulo)

#Pub
pub <- read_json('unb.Pub.Linguistica.json')
names(pub)

sapply(pub, function(x) sapply(x, function(y) length(y)))


paises <- sapply(pub$EVENTO$`2010`, function(x) x$pais_do_evento)


eventos2017 <- pub$EVENTO$`2017`
paises <- sapply(eventos2017, function(x) x$pais_do_evento)
natureza <- sapply(eventos2017, function(x) x$natureza)
data <- data.frame(paises, natureza)
ggplot(data, aes(x=paises, y=natureza, col=paises)) + geom_point() + geom_jitter()


#xls
dgp <- read_xlsx("dgp.xlsx", sheet=4, col_names = TRUE, col_types = NULL, skip=0)
glimpse(dgp)
ggplot(data = dgp) + geom_bar(mapping = aes(x = `Tipo Participação`, fill = `Nível Formação Participante` ))
