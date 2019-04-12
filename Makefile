all: clean source install build package

clean:
	rm -rf tmp

source:
	conan source . --source-folder=tmp/source

install:
	conan install  . --install-folder=tmp/build

build:
	conan build . --source-folder=tmp/source --build-folder=tmp/build

package:
	conan package . -sf=tmp/source -bf=tmp/build -pf=tmp/package

# when you're satisfied that the package is correct, install it for real
package-install: package-uninstall
	conan create   . ppetraki/nana -s build_type=Release
	conan create   . ppetraki/nana -s build_type=Debug

package-uninstall:
	# always exit with success because you could have removed
	# it manually ahead of time which will cause package-install to
	# fail as this dependent rule will fail first
	conan remove -f nana/1.7.0@ppetraki/nana || :
