<h1>Disciplina Ciência de Dados Aplicada e 
Ciência de Dados para Todos
Relatório 1 – Importação e Limpeza de Dados
Autor: XXXXXXX Data: XXXXXX


## 1. Introdução

## 2. Metodologia
Para realizar a análise dos dados foi utilizado o programa RStudio e os pacotes jsonlite para importação e limpeza dos dados.

Para melhor entendimento e visualização dos dados foram utilizados as funções *str(), e summary()*, que proporcionaram uma visão geral dos dados, e também as funções *length(), class(), names()* para entender melhor a estrutura dos dados que estavam em formato json.

Por fim, foram utilizadas as funções *lapply() e sapply()* para a criação de novas estruturas e a formação de subconjuntos

## 3. Resultados
Foram importados quatro arquivos, todos importados através do método *read_json()*:
* **Perfis Professores UnB - JSON** : denominado como *unb_perfis_json*
* **Publicações Professores UnB - JSON** : denominado como *unb_relatorio_plublicao_json*
* **Orientações Professores UnB - JSON** : denominado como *unb_relatorio_orientacao_json*
* **Teses e Dissertações da UnB - JSON** : denominado como *unb_teses_dissertacoes_json*

O primeiro arquivo, *unb_perfis_json*, contém 1592 observações, que pode ser visto através do método: *length(unb_perfis_json)*. Por meio da função *names(unb_perfis_json)* pode-se perceber que cada observação tem uma string composta de 16 caracteres numéricos que idenfica a observação. E, por meio da função: *summary()*, pode-se observar que cada observação é divida em 7 atributos principais: **nome, resumo_cv, areas_de_atuacao, endereco_profissional, producao_bibliografica, orientacoes_academicas e senioridade**.

O segundo arquivo, *unb_relatorio_plublicao_json*, temos os dados referentes a publicações de professores em:  **periódicos,
livros e capítulos de livros, texto em jornais e artigos aceitos**, isso pode ser visto utilizando a função *names()*. Para os artigos aceitos pode-se perceber que o número vem crescendo desde 2012.
//adicionar plot

O terceiro arquivo, unb_relatorio_orientacao_json, pode-ser perceber, por meio das funções **length(unb_relatorio_orientacao_json) e names(unb_relatorio_orientacao_json)** , que os dados são dividios em 8 observações quer seriam orientação em andamento de pós doutorado, doutorado, mestrado, graduação e iniciação científica e orietação concluída de pós doutorado, doutorado e mestrado. Para as orientações concluídas de mestrado tem os números 760, 933, 877, 817, 777, 463 para os anos de 2012 a 2017, respectivamente. Esse dado pode ser avaliado por meio da função *sapply(unb_relatorio_orientacao_json$ORIENTACAO_CONCLUIDA_MESTRADO, length)*

O quarto arquivo, unb_teses_dissertacoes_json, tem os dados referentes a teses e dissertações na unb. O arquivo contém 18462 observações, que pode ser vista através da função *length(unb_teses_dissertacoes_json$response$docs)*. As observações contém informações como descrição, linguagem, data de publicação, título, autor, entre outras, referentes a tese ou dissertação. 

A análise até este momento nos permitiu entender a estrutura dos dados do currículo lattes e como esta pode se relacionar com as diferentes bases de grupos de pesquisa, orientação ou demais publicações.