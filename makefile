.PHONY: all
all: v1/index.html

v1/index.html: v1/readme.adoc
	@asciidoctor -b html5 -D v1/ -o index.html -r pygments.rb v1/readme.adoc
