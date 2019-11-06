objects = $(wildcard ./html/*.md) # source file (list)
targets = $(objects:.md=.html) # target file (list)

.PHONY: all clean

all: $(targets)

%.html : %.md
	pandoc -s --self-contained -f markdown -t html -c github_kn.css "$<" > "$@"

clean:
	rm -f $(targets)
