# Importando biblioteca jsonlite
library(jsonlite)
Sys.setlocale("LC_ALL", "pt_BR.utf-8")

# Importando biblioteca dplyr
library(dplyr)

# Importantando e analisando arquivo unb.perfis.json
unb_perfis_json <- read_json('unb.perfis.json')
str(unb_perfis_json)
summary(unb_perfis_json)
names(unb_perfis_json)
unb_perfis_json$"6132148054353632"
summary(unb_perfis_json$"6132148054353632")
length(unb_perfis_json)
toJSON(head(unb_perfis_json, 1), pretty=TRUE)

# Importante e analisando arquivo unb.relatorioOrientacao.json
unb_relatorio_orientacao_json <- read_json('unb.relatorioOrientacao.json')
str(unb_relatorio_orientacao_json)
names(unb_relatorio_orientacao_json)
length(unb_relatorio_orientacao_json)
sapply(unb_relatorio_orientacao_json$ORIENTACAO_CONCLUIDA_MESTRADO, length)
lapply(unb_relatorio_orientacao_json$ORIENTACAO_EM_ANDAMENTO_DE_POS_DOUTORADO, length)

# Importantando e analisando arquivo unb.relatorioProducaoBibiografica.json
unb_relatorio_plublicao_json <- read_json('unb.relatorioProducaoBibiografica.json')
str(unb_relatorio_plublicao_json)
names(unb_relatorio_plublicao_json)
summary(unb_relatorio_plublicao_json)
artigos_aceitos <- lapply(unb_relatorio_plublicao_json$ARTIGO_ACEITO, length)
anos <- names(artigos_aceitos)
numero_de_artigos_aceitos <- artigos_aceitos
plot(anos, artigos_aceitos)

# Importantando e analisando arquivo bdtd_unb.json
unb_teses_dissertacoes_json <- read_json('bdtd_unb.json')
str(unb_teses_dissertacoes_json)
summary(unb_teses_dissertacoes_json)
str(unb_teses_dissertacoes_json$response$docs)
head(unb_teses_dissertacoes_json$response$docs)
class(unb_teses_dissertacoes_json$response$docs)
unb_teses_dissertacoes_json$response$docs
unb_teses_dissertacoes_json$response$docs[[2]]["publishDate"]
lapply(unb_teses_dissertacoes_json$response$docs,  length)
var2 <- lapply( unb_teses_dissertacoes_json$response$docs, '[[', 'publishDate' )

