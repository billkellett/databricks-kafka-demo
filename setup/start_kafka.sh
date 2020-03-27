#!/bin/bash

echo "Starting Zookeeper..."
kafka/kafka_2.12-2.4.1/bin/zookeeper-server-start.sh kafka/kafka_2.12-2.4.1/config/zookeeper.properties &
echo "... Zookeeper started"
echo "Pausing 15 seconds."
sleep 115

echo "Starting Kafka..."
kafka/kafka_2.12-2.4.1/bin/kafka-server-start.sh kafka/kafka_2.12-2.4.1/config/server.properties &
echo "... Kafka started."
echo "Pausing 15 seconds."
sleep 15
echo "To continue working on this machine via SSH, it will be more convenient to open a new terminal window."
echo "That way, you will not be interrupted with console messages from Kafka and Zookeeper." 