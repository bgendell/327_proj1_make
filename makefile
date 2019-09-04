CFLAGS = -g -Wall

#create myexe
all: myfunc.o
	g++ $(CFLAGS) -o myexe myfunc.o main.cpp
	
#rebuild myfunc	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp 

#clean up
clean:
	rm -f *.o myexe myexe.exe
