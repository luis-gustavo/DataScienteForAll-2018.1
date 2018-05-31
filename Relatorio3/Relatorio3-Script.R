#Importando bibliotecas
library(jsonlite)
library(ggplot2)
library(readxl)
library(dplyr)
Sys.setlocale("LC_ALL", "pt_BR.utf-8")

#Perfis Geografia
perfisGeografia <- read_json('geografia.profile.json')
length(perfisGeografia)
names(perfisGeografia$"0975018553829295")





names(perfisGeografia$"0975018553829295"$producao_bibiografica)

sapply(perfisGeografia$"5127536119098016"$areas_de_atuacao, function(x) x$grande_area)


names(perfisGeografia$"5127536119098016")



length(perfisGeografia)

#professores presentes no data set
length(perfisGeografia)
sapply(perfisGeografia, function(x) return (x$nome))

#grafico 1
senioridade <- sapply(perfisGeografia, function(x) x$senioridade)
num_orientacoes <- sapply(perfisGeografia, function(x) length(x$orientacoes_academicas))
data <- data.frame(num_orientacoes, senioridade)
ggplot(data, aes(x=senioridade, y=num_orientacoes)) + geom_bar(stat="identity", fill="#adbce6")

#grafico 2
areas_de_atuacao <- sapply(perfisGeografia, function(x) length(x$areas_de_atuacao))
data2 <- data.frame(senioridade,areas_de_atuacao)
ggplot(data2, aes(x=senioridade, y=areas_de_atuacao)) + geom_bar(stat="identity", fill="#98FB98")

#grafico 3
pub <- read_json('geografia.publication.json')
names(pub)
sapply(pub, names)
eventos2017 <- pub$EVENTO$`2017`
paises <- sapply(eventos2017, function(x) x$pais_do_evento)
natureza <- sapply(eventos2017, function(x) x$natureza)
data <- data.frame(paises, natureza)
ggplot(data, aes(x=paises, y="", col=paises)) + geom_point() + geom_jitter()

#grafico 4
names <- names(pub)
tamanhos <- sapply(pub, function(x) length(x))
tamanhos
abc <- data.frame(names, tamanhos)

bp<- ggplot(abc, aes(x="", y=names, fill=names))+
  geom_bar(width = 1, stat = "identity") + coord_polar("y", start=0)
bp
