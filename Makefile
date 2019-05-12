

clean:
	rm -rf bin

linux: clean
	mkdir -p bin
	CGO_ENABLED=0 GOOS=linux go build -o bin/torrentRenamer_linux main/main.go

mac: clean
	mkdir -p bin
	CGO_ENABLED=0 GOOS=darwin go build -o bin/torrentRenamer_mac main/main.go

win: clean
	mkdir -p bin
	CGO_ENABLED=0 GOOS=windows go build -o bin/torrentRenamer_win.exe main/main.go
