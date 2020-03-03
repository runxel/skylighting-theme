# Makefile

PANDOC = /usr/bin/pandoc
RM = /bin/rm -rf
PATH = tests/
CSS_STYLE = mylighting.css
CSS_BASE  = base.css

SOURCE_DOCS = $(wildcard $(PATH)*.md)
FILE_NAME = $(notdir $(SOURCE_DOCS))


EXPORTED_HTML = $(addprefix $(PATH),$(FILE_NAME:.md=.html))

PANDOC_OPTIONS=\
	--from markdown
PANDOC_HTML_OPTIONS=\
	--to html5\
	--css=../$(CSS_STYLE)\
	--css=../$(CSS_BASE)\
	-s

$(PATH)%.html : $(PATH)%.md $(CSS_STYLE)
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<

.PHONY: html

html: $(EXPORTED_HTML) $(SOURCE_DOCS)

clean:
	-$(RM) $(EXPORTED_HTML)
