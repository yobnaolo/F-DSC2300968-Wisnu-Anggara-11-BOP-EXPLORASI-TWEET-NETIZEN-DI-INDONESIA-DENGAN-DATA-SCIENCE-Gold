run:
	uvicorn main:app --reload --log-level debug --port 8200
local:
	docker build -t learn-deploy .
serve:
	docker run -d -p 8200:8200 --name learn-deploy learn-deploy
stop:
	docker stop learn-deploy && docker rm learn-deploy
logs:
	docker logs -f learn-deploy
shell:
	docker exec -it learn-deploy bash