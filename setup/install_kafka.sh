#!/bin/bash

# install java
echo "Installing Java 8..."

sudo apt-get update
sudo apt-get install -y openjdk-8*

java -version

echo "... Java 8 installed."

# install kafka
echo "Installing Kafka and Zookeeper..."

rm --force --recursive kafka
mkdir kafka
curl --output kafka/kafka_2.12-2.4.1.tgz 'https://apache.mirrors.lucidnetworks.net/kafka/2.4.1/kafka_2.12-2.4.1.tgz' --location 

cd kafka
tar -xzf kafka_2.12-2.4.1.tgz
cd kafka_2.12-2.4.1

echo "... Kafka and Zookeeper installed."