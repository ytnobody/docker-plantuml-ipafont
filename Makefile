PLANTUML_VERSION = 1.2020.10
TAG = ytnobody/plantuml-ipafont:$(PLANTUML_VERSION)

build:
	docker build . --build-arg PLANTUML_VERSION=$(PLANTUML_VERSION) -t $(TAG)

run:
	cat test.uml | docker run --rm -i $(TAG) -tpng > uml.png
