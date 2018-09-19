ifeq ($(shell uname), Linux)
  CC         = g++ 
  LIBLINK    =-fPIC -shared 
  INCLUDEDIR = -I /etc/alternatives/java_sdk/include/ -I /etc/alternatives/java_sdk/include/linux/
  TARGET     = libdecrypt.so
endif

ifeq ($(shell uname), Darwin)
  CC		 = g++ 
  LIBLINK    = -dynamiclib
  TARGET     = libdecrypt.dylib
  INCLUDEDIR = -I/System/Library/Frameworks/JavaVM.framework/Headers
endif

OBJS = decrypt.cpp

$(TARGET):$(OBJS)
	$(CC) $(INCLUDEDIR) $(LIBLINK) -o $(TARGET) $(OBJS)

decrypt.o: decrypt.cpp
	$(CC) $(INCLUDEDIR) -c decrypt.cpp

.PHONY:clean
clean:
	rm $(TARGET) 
