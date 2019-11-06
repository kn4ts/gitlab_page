objects = $(wildcard ./html/*.md) # source file (list)
targets = $(objects:.md=.html) # target file (list)

all: $(targets)

%.html : %.md
	pandoc -s --self-contained -f markdown -t html -c github_kn.css "$<" > "$@"
