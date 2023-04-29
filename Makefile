run-build:
	docker build -t astronvim-playground:dev .

run-shell:
	docker exec -it astronvim-playground:dev sh 
