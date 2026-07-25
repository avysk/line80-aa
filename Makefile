PROG := line80-aa

ROM := build/${PROG}.rom
SOURCES := src/${PROG}.z80

${ROM}: ${SOURCES}
	mkdir -p build
	cp ${SOURCES} build/
	cd build && asmsx ${PROG}.z80
	mkdir -p target
	cp ${ROM} target/

clean:
	rm -rf build/

.PHONY: clean
