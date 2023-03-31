.PHONY: all clean

all: linux

linux: clean
    sh ./bin/linux.sh

clean:
    sh ./bin/cleanup.sh

# Set execute permissions on shell scripts
chmod +x ./bin/linux.sh
chmod +x ./bin/cleanup.sh

