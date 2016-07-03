all: build

build:
	@docker build --tag=openapphack/mysql .

release: build
		@docker build --tag=openapphack/postgresql:$(shell cat VERSION) .
