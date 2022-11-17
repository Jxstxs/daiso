DAISO="daiso-2022-11.iso"
AUTHOR="Julius Beier"

.PHONY: all build run clean

all: build

build:
	sudo mkarchiso -v -o /home/julius/.repos/personal/projects/daiso/build -P ${AUTHOR} -L ${DAISO} .

run:
	run_archiso -u -i $(DAISO)

clean:
	sudo rm -rf build work
