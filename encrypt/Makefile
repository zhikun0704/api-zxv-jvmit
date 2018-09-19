ifeq ($(shell uname), Linux)
  CC         = g++ 
  LIBLINK    =-fPIC -shared 
  INCLUDEDIR =-I /etc/alternatives/java_sdk/include/ -I /etc/alternatives/java_sdk/include/linux/ 
  TARGET     = libencrypt.so
endif

ifeq ($(shell uname), Darwin)
  CC		 = g++ 
  LIBLINK    = -dynamiclib
  TARGET     = libencrypt.dylib
  INCLUDEDIR = -I/System/Library/Frameworks/JavaVM.framework/Headers
endif

OBJS = encrypt.cpp

$(TARGET):$(OBJS)
	$(CC) $(INCLUDEDIR) $(LIBLINK) -o $(TARGET) $(OBJS)

encrypt.o: encrypt.cpp
	$(CC) $(INCLUDEDIR) -c encrypt.cpp

.PHONY:clean
clean:
	rm $(TARGET) 
