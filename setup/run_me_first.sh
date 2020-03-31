#!/bin/bash
 
echo "Downloading scripts..."
curl -o install_kafka.sh 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/install_kafka.sh' -L 
curl -o start_kafka.sh 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/start_kafka.sh' -L 
curl -o stop_kafka.sh 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/stop_kafka.sh' -L 
curl -o verify_kafka_running.sh 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/verify_kafka_running.sh' -L 
curl -o create_kafka_topics.sh 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/create_kafka_topics.sh' -L 
curl -o README_Kafka-server-setup.txt 'https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/README-Kafka-server-setup.txt' -L 

chmod +x install_kafka.sh
chmod +x start_kafka.sh
chmod +x stop_kafka.sh
chmod +x verify_kafka_running.sh 
chmod +x create_kafka_topics.sh 

echo "... scripts downloaded."

echo "Downloading data for event generator..."
mkdir data
curl -o data/spark_streaming_workshop.rating_modifiers.csv 'https://github.com/billkellett/databricks-kafka-demo/blob/master/setup/data/spark_streaming_workshop.rating_modifiers.csv' -L 
echo "... data download complete."
echo "Finished."

