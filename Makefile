build:
	docker build -t codekoala/percona .

run:
	docker run -t -i --rm -h percona.local -p 3306 --name percona codekoala/percona

clean:
	docker rmi `docker images -q codekoala/percona`
