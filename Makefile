DOC = uk_scripting_presentation

all:
	latex $(DOC)
	latex $(DOC)
	latex $(DOC)
	latex $(DOC)
	dvips $(DOC).dvi -o $(DOC).ps
	#       dvips -t letter -t landscape -P pdf -z -o $(DOC).ps $(DOC).dvi
	ps2pdf $(DOC).ps

	#       @; acroread $(DOC).pdf
	#       @; ps2pdf -dPDFsettings=/prepress -dProcessColorModel=/DeviceCMYK $(DOC).ps $(DOC)_print.pdf

clean:
	rm $(DOC).dvi
	rm $(DOC).ps
	rm $(DOC).log
	rm $(DOC).pdf
	rm $(DOC).aux
	rm $(DOC).toc
	rm $(DOC).out

test: clean all
	acroread $(DOC).pdf &

spellcheck:
	aspell -t -c $(DOC).tex
