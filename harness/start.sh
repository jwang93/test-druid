#!/bin/bash
(
sh ./01-start-zookeeper.sh
echo "Zookeeper started."
sh ./02-start-kafka.sh
echo "Kafka started."
sh ./03-start-druid-master.sh
echo "Druid master started."
sh ./04-start-druid-realtime.sh
echo "Druid realtime started."
sh ./05-start-druid-compute.sh
echo "Druid compute started."
sh ./06-start-druid-broker.sh
echo "Druid broker started."
sh ./07-start-firehose.sh
echo "Firehose started."
sh ./08-run-queries.sh
)