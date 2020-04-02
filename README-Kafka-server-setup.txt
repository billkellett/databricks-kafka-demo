How to set up and run a Databricks/Kafka Demo

I. Prerequisites (we assume you know how to provision a Linux machine on your cloud provider)

- 1 Linux machine (does not need to be very powerfulj)
- The machine must be configured to allow the following:
--- ICMP (ping)
--- SSH (port 22)
--- Kafka communication (port 9092)
--- Public IP address.  NOTE: it is highly recommended to use a static IP address, because reconfiguration of the demo for a new IP address on each run is annoying.

II. One-time installation steps

- SSH into the Kafka machine
- Verify that you are in your home directory (pwd should return something like /home/<your-user-name>
- If necessary, install curl

- Run the following, which downloads scripts and data needed for the demo:
--- wget https://raw.githubusercontent.com/billkellett/databricks-kafka-demo/master/setup/run_me_first.sh
--- chmod +x run_me_first.sh
--- ./run_me_first.sh 

- Run the following script, which installs Java 8, Zookeeper, and Kafka
--- ./install_kafka.sh

- MANUAL EDIT STEP
--- Open in an editor: kafka/kafka_2.12-2.4.1/config/server.properties
--- find the line #advertised.listeners
--- uncomment the line and insert your machine's IP address.  For example, if your IP address is 1.2.3.4 the final result will look like this: advertised.listeners=PLAINTEXT://1.2.3.4:9092 - NOTE: if you do not have a static IP address, you will have to do this step every time you start the machine.

III. Every time you start the Kafka server, perform these steps

- Start Kafka and Zookeeper
--- ./start_kafka.sh (after this runs, it will be more convenient to open a new terminal to run the following scripts)
--- ./create_kafka_topics.sh (it's OK if this gives you an error saying topics already exist)
--- ./verify_kafka_running.sh (will return a list of Kafka topics)

IV. When you are ready to begin the demo

- When the Databaricks notebook tells you, start the event generator program, which emits 2 events per second on topic ratings_modifier:
--- java -jar kafka-event-generator-1.0-SNAPSHOT-jar-with-dependencies.jar

V. When you are finished with the demo

- Stop the event generator on the Kafka server with CTRL-C

- Stop Kafka and Zookeeper:
--- ./stop_kafka.sh

- Shut down the Kafka server.
