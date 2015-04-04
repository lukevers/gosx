PROGRAM := gosx
APP := gosx.app

.PHONY: all clean

all:
	go build
	cp -r app $(APP)
	cp $(PROGRAM) $(APP)/Contents/MacOS/

build: $(PROGRAM)
	go build

clean:
	@- $(RM) $(PROGRAM)
	@- $(RM) -r $(APP)
