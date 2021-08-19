# Criar um bucket
aws --endpoint-url=http://localhost:4566 s3 mb s3://danieldcs

# Listar todos os buckets
aws --endpoint-url=http://localhost:4566 s3 ls


mkdir nodejsLocalAWS
cd nodejsLocalAWS
npm init -y
npm install aws-sdk
touch sqs-consumer.js sqs-publisher.js

aws sqs create-queue \
--queue-name local-queue \
--endpoint-url http://localhost:4566 \
--region us-east-1 

# deve retornar algo como:
{
  "QueueUrl": "http://localhost:4566/000000000/local-queue"
}

aws --endpoint-url http://localhost:4566 sns create-topic --name local-topic ## #v2 cli#--region us-east-1

# deve retornar algo como:
{
  "TopicArn": "arn:aws:sns:us-east-1:000000000:local-topic"
}