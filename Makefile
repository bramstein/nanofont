
all: dist base64

dist:
	mkdir -p dist
	ttx -o dist/nanofont.ttf src/nanofont.ttx
	sfnt2woff-zopfli dist/nanofont.ttf
	woff2_compress dist/nanofont.ttf

base64:
	base64 dist/nanofont.ttf > dist/nanofont.ttf.base64
	base64 dist/nanofont.woff > dist/nanofont.woff.base64
	base64 dist/nanofont.woff2 > dist/nanofont.woff2.base64

clean:
	rm -r dist

.PHONY: dist clean base64 
