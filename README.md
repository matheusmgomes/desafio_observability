# desafio_observability

## Ferramentas utilizadas:
- Elasticsearch 7.17.3
- Kibana 7.17.3
- [Random Logger](https://hub.docker.com/r/chentex/random-logger/)
- [JSON to ES Bulk](https://github.com/mradamlacey/json-to-es-bulk)
- Docker

## Como executar:
- ''docker compose up no diretório''
- ''curl --request PUT --url 'http://localhost:9200/loggings?pretty=' (cria o index loggings)''
- ''curl --request POST \
  --url 'http://localhost:9200/loggings/_bulk/?pretty=' \
  --header 'Content-Type: application/x-ndjson' \
  --data ' conteúdo do arquivo request-data.txt '  (popula o index)''

## Como foi desenvolvido:

Optei por usar o Elasticsearch e o Kibana de forma local por estar mais acostumado com o terminal do Linux, porém subi um docker-compose que roda ambos os containers pelo docker.

Tive facilidade em aprender os comandos básicos do Elasticsearch e do Kibana, mas esbarrei em diversas dificuldades no uso dos containers de ambos no Docker que não consegui contornar, outra situação que levou ao uso local das ferramentas.

No index, criei apenas o 'loggings' para armazenar os logs gerados pelo Random Logger. Para populacionar o index, utilizei uma ferramenta que transforma JSON simples para o NDJSON, que seria o JSON com as informações de index necessárias para a inserção no Elasticsearch. O resultado dessa transformação é o arquivo request-data.txt.

Por fim, foi um grande aprendizado de uma ferramenta que eu desconhecia por total e que com certeza me interessei pelo uso e pelas possibilidades que ela tem.