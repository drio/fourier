nb = notebook-fourier.ipynb

all: notebook-fourier.html apu

notebook-fourier.html: notebook-fourier.ipynb
	ipython nbconvert --to html $?

apu: notebook-fourier.html
	scp $< apu:public_html/fourier.html
	scp *.png apu:public_html/
	@echo "http://drio.org/~drio/fourier.html"
