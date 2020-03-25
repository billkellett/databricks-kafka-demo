#!/bin/bash

echo "Checking to see if Kafka is running..."
echo "... we check by asking Kafka for a list of defined topics..."
kafka/kafka_2.12-2.4.1/bin/kafka-topics.sh --list --bootstrap-server localhost:9092
echo "... Kafka check complete." 
