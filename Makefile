clean:
	docker-compose down
	rm -rf persistence/hadoop-data/*
	rm -rf persistence/hadoop-sname/*
	rm -rf persistence/hadoop-name/*
	rm -rf persistence/zookeeper/*
