#-----------------------------------------------------
MAIN=main
ICONSDIR=images/icons
IMAGESDIR=images
STYLE=/Users/bruel/Dropbox/Public/dev/asciidoc/stylesheets/golo-jmb.css
#STYLE=/Users/bruel/dev/asciidoctor/asciidoctor-stylesheet-factory/stylesheets/jmb.css
ASCIIDOC=asciidoc -a icons -a iconsdir=$(ICONSDIR) -a stylesheet=$(STYLE) -a imagesdir=$(IMAGESDIR) -a data-uri
#HIGHLIGHT=coderay
#HIGHLIGHT=highlightjs
#HIGHLIGHT=prettify
HIGHLIGHT=pygments
DOCTOR=asciidoctor -a icons -a iconsdir=$(ICONSDIR) -a images=$(IMAGESDIR) -a source-highlighter=$(HIGHLIGHT)
#DECK=web-2.0
DECK=swiss
#DECK=neon
#DECK=beamer
EXT=asc
PANDOC=pandoc
OUTPUT=.
DEP=
SOURCEFILES = ./src/java/CodingDojo/src/*.java
DOC = doc
#-----------------------------------------------------

all: $(OUTPUT)/*.html

images/%.png: images/%.plantuml
	@echo '==> Compiling plantUML files to generate PNG'
	java -jar plantuml.jar $<

images/%.svg: images/%.plantuml
	@echo '==> Compiling plantUML files to generate SVG'
	java -jar plantuml.jar -t SVG $<

pattern/%.png: pattern/%.plantuml
	@echo '==> Compiling plantUML files to generate PNG'
	java -jar plantuml.jar $<

$(OUTPUT)/%.html: %.$(EXT) $(DEP)
	@echo '==> Compiling asciidoc files with Asciidoctor to generate HTML'
	$(DOCTOR) -a toc2 -b html5 -a numbered -a eleve $<

%.full.html: %.$(EXT) $(DEP)
	@echo '==> Compiling asciidoc files with Asciidoctor to generate HTML'
	$(DOCTOR) -a toc2 -a data-uri -b html5 -a numbered -a eleve -o $@ $<

%.deckjs.html: %.$(EXT)  $(DEP)
	@echo '==> Compiling asciidoc files to generate Deckjs'
	$(DOCTOR) -T /Users/bruel/dev/asciidoctor-backends/haml/deckjs/ -a slides \
	-a data-uri -a deckjs_theme=$(DECK) \
	-a icons -a iconsdir=$(ICONSDIR) \
	-a images=$(IMAGESDIR) -a prof -o $@ $<
