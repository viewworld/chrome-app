
all: viewworld.zip

clean:
	rm -f viewworld.zip

viewworld.zip: viewworld/icon_128.png viewworld/manifest.json
	zip -r viewworld.zip viewworld

imgs: small-tile.png viewworld/icon_128.png

viewworld/%.png: %.png
	cp $< $@

%.png: %.svg
	inkscape --export-png="$@" $<
	optipng $@
