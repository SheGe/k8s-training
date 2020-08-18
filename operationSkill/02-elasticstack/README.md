# Elastic stack

Elasticsearch single-node cluster is already running. Let run now a Kibana on docker container.

1. Create docker network

    ```shell
    docker network create elastic
    ```

1. Connect running container to a new network

    ```shell
    docker network connect elastic es790
    ```

1. Start Kibana container

    ```shell
    docker run --name kibana790 -p 5601:5601 --network elastic -e "ELASTICSEARCH_URL=http://es790:9200" -e "ELASTICSEARCH_HOSTS=http://es790:9200" -d docker.elastic.co/kibana/kibana:7.9.0
    ```
