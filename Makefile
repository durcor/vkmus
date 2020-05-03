CFLAGS = -std=c++17 -I/usr/include/vulkan
LDFLAGS = -L/usr/lib -lglfw -lvulkan

vkmus: main.cpp
	clang++ ${CFLAGS} -o vkmus main.cpp ${LDFLAGS}

test: vkmus
	./vkmus

clean:
	rm -f vkmus
