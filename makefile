run: down up 
new: down upnew


up:
	docker-compose -f docker-compose.yml up -d --force-recreate --build
	docker-compose logs -f 
stop:
	docker-compose -f docker-compose.yml stop
down:
	docker-compose -f docker-compose.yml down

test:
	docker-compose -f docker-compose.test.yml up --build --abort-on-container-exit
	docker-compose -f docker-compose.test.yml down 
