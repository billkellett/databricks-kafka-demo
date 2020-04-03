# databricks-kafka-demo

This repository contains assets for a demo of Databricks-Kafka integration.

The demo uses three notebooks, one for each of three use cases:

1. The first notebook shows how to consume an event stream from Kafka into Spark, transform the data, and write it as detail-level records into a Delta Lake table.

2. The second notebook shows how to aggregate data from a Kafka stream and persist aggregated snapshots into a Delta Lake table.

3. The third notebook shows how to "pipeline" data.  We consume a Kafka stream into Spark, and then filter for certain events.  When these events are found, we publish them back to Kafka under different topics.  Other Spark applications then consume these new topics, transform them, and persist them into Delta Lake tables.

The notebooks can be imported from https://github.com/billkellett/databricks-kafka-demo/blob/master/notebooks/databricks-kafka-demo.dbc 

This demo also requires a Kafka server, with a data generator program that publishes the event stream used in the demo.  Instructions for setting up and using this server are here: 
https://github.com/billkellett/databricks-kafka-demo/blob/master/README-Kafka-server-setup.txt
