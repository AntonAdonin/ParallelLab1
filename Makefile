all: ./build/double.cpp.o
	./build/double.cpp.o

double: ./build/double.cpp.o
	./build/double.cpp.o

float: ./build/float.cpp.o
	./build/float.cpp.o

./build/double.cpp.o:
	mkdir -p build
	g++ -D TYPE=double main.cpp -o ./build/double.cpp.o
	chmod +x ./build/double.cpp.o

./build/float.cpp.o:
	mkdir -p build
	g++ -D TYPE=float main.cpp -o ./build/float.cpp.o
	chmod +x ./build/double.cpp.o

clean:
	rm -rf ./build