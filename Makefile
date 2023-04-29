run-build:
	docker build -t astronvim-playground:dev .

run-shell:
	docker run -w /root -it astronvim-playground:dev sh
