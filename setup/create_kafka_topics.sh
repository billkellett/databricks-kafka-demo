#!/bin/bash

# Create kafka topics
echo "Creating Kafka topics..."
kafka/kafka_2.12-2.4.1/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic rating_modifiers
kafka/kafka_2.12-2.5.1/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic good_news
kafka/kafka_2.12-2.5.1/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic bad_news
kafka/kafka_2.12-2.5.1/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test
echo "... Kafka topics created."