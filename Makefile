build:
	docker build --force-rm -t tensornotebook:1.0 .

run:
	docker run --rm -d -p 8888:8888 --name tensornotebook -v tensornotebook:/home/jovyan/work -d tensornotebook:1.0
