objects = $(wildcard ./html/*.md) # source file (list)
targets = $(objects:.md=.html) # target file (list)

.PHONY: all clean

all: $(targets)

%.html : %.md
	cd ./html && pandoc -s --self-contained -f markdown -t html -c ../github_kn.css "$(subst html/,,$<)" > "$(subst html/,,$@)"

clean:
	rm -f $(targets)
