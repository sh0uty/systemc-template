CC = g++
CFLAGS = -I/usr/local/systemc233/include
LIBS = -lm -L/usr/local/systemc233/lib-linux64 -lsystemc -static

TARGET = main

$(TARGET): $(TARGET).o
	$(CC) $(CFLAGS) $(LIBS) -o $@ $^ 

%.o: %.cpp
	$(CC) $(CFLAGS) -c $^

clean:
	$(RM) $(TARGET) $(TARGET).o 
