
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image imagep output.png

imagep: image_pthread.c image.h
	gcc -g -o imagep image_pthread.c -lpthread -lm
imageopen: image_openmp.c image.h
	gcc -g -Wall -fopenmp -o imageopen image_openmp.c -lm
