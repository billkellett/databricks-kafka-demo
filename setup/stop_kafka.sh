#!/bin/bash

echo "Stopping Kafka..."
kafka/kafka_2.12-2.4.1/bin/kafka-server-stop.sh
sleep 15
echo "...Kafka stopped."

echo "Stopping Zookeeper..."
kafka/kafka_2.12-2.4.1/bin/zookeeper-server-stop.sh
sleep 15
echo "... Zookeeper stopped"
