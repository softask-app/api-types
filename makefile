.PHONY: all
all: index.html v1/index.html

index.html: readme.adoc
	@asciidoctor -b html5 -o index.html -r pygments.rb readme.adoc

v1/index.html: v1/readme.adoc
	@asciidoctor -b html5 -D v1/ -o index.html -r pygments.rb v1/readme.adoc
