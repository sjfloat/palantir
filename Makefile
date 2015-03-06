
NAME= palantir
PARTS= stone.pov table.pov stone.pov table.pov tower.pov dim.inc marble.inc


POV= $(NAME).pov
TGA= $(NAME).tga

DBLESIZE= +w1280 +h960
FULLSIZE= +w640 +h480
HALFSIZE= +w320 +h240
QUARTSIZE= +w160 +h120
PINTSIZE= +w80 +h60
TINY= +w62 +h48
HOMESCREEN= +w912 +h684
FULLSCREEN= +w1280 +h1024
GEOM= $(FULLSCREEN)

#QUALITY= +Q0

ANIMFLAGS= +J0 -P +A +V +KFI0 +KFF20 +KC

# for animations
#POVRAYFLAGS= +D0 $(QUALITY) $(GEOM) $(ANIMFLAGS)

# normal with preview
POVRAYFLAGS= +D0 $(QUALITY) $(GEOM) +A +V #+SP16

#POVRAYFLAGS= +D0 +SP20 $(QUALITY) $(GEOM) +A +V
POVRAYCMD= x-povray $(POVRAYFLAGS)

%.tga : %.pov
	$(POVRAYCMD) +I$< 

%.jpg : %.tga
	convert $< $@

$(TGA): $(POV) $(PARTS)
