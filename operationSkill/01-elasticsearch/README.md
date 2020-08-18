# Elasticsearch

For running

1. Download the image to your local environment

    ```shell
    docker pull docker.elastic.co/elasticsearch/elasticsearch:7.9.0
    ```

1. Start a single-node Elasticsearch cluster

    ```shell
    docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e "xpack.license.self_generated.type=basic" -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" -d docker.elastic.co/elasticsearch/elasticsearch:7.9.0
    ```

1. Open new console and create empty index

    ```shell
    docker run --rm curlimages/curl -X PUT "host.docker.internal:9200/twitter?pretty"
    docker run --rm curlimages/curl -X GET "host.docker.internal:9200/_cat/indices?pretty"
    ```

1. Open interactive shell for starting an investigation

    ```shell
    docker exec -ti <container_name|container_id> bash
    ```

    How the variables translate to the elasticsearch configuration: [check here](https://github.com/elastic/elasticsearch/blob/7.9/distribution/src/bin/elasticsearch-env).

    ```bash
    ps -aux
    ```

    Exit from interactive shell and try executing `docker inspect` command [more](https://docs.docker.com/engine/reference/commandline/inspect/).

    🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄

1. Start a single-node Elasticsearch cluster with volume attached

    ```shell
    docker run --name es790 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e "xpack.license.self_generated.type=basic" -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" -v $PWD/.data/es1:/usr/share/elasticsearch/data -d docker.elastic.co/elasticsearch/elasticsearch:7.9.0
    ```

    🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄
