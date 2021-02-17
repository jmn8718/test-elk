# test-elk

This repository is a test for configure Logstash to prepare the deployment to AWS ECS

## development

Start all the services with `docker-compose up`.

It starts:
- Logstash
- Elasticsearch
- Kibana

## Testing

Logstash has configured a module to accept http request on port _5000_.

```
curl --location --request POST 'http://localhost:5000' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "user",
    "password": "pass"
}'
```

On _kibana dashboard_ [http://localhost:5601] you can access and visualize the logs

## Resources

- https://github.com/awslabs/logstash-output-amazon_es
- https://www.elastic.co/guide/en/logstash/current/plugins-inputs-kinesis.html
- https://medium.com/@devfire/deploying-the-elk-stack-on-amazon-ecs-part-4-84a1e9a32f53
- https://teichae.tistory.com/entry/Docker-Compose%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%98%EC%97%AC-ELK-Stack-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-1
- https://github.com/deviantony/docker-elk
- https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-aws-integrations.html
- https://github.com/aws-samples/aws-cdk-managed-elkk