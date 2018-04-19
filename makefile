
build:
	mkdir build
	mkdir build/GoAppPkg
	mkdir build/GoAppPkg/Code
	cp ./src/ApplicationManifest.xml ./build/ApplicationManifest.xml
	cp ./src/ServiceManifest.xml ./build/GoAppPkg/ServiceManifest.xml
	CGO_ENABLED=0 GOOS=windows go build -a -installsuffix cgo -o ./build/GoAppPkg/Code/fabric_app.exe ./src

clean:
	rm -rf ./build