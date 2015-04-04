PROGRAM := gosx
APP := gosx.app

.PHONY: all clean

all:
	go build
	cp -r app $(APP)
	cp $(PROGRAM) $(APP)/Contents/MacOS/

clean:
	@- $(RM) $(PROGRAM)
	@- $(RM) -r $(APP)
