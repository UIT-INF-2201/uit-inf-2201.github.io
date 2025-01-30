#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>

#define N 100000

// Shared counter
int counter=0;

// Acquire the lock
void acquire(unsigned char *lock){
  unsigned char old=1; // Assume lock is taken
  while(old){
	asm("mov %1, %%rbx\n\t"
		"mov $1, %%al\n\t"
		"xchg (%%rbx), %%al\n\t"
		"movb %%al, %0"
		: "=r" (old) // Outputs
		: "r" (lock) // Inputs
		: "rax", "rbx");
  }
}

// Releasing the lock
void release(unsigned char *lock){
  *lock=0;
}

// Theads code
static void *run(void *lock) {
  for(int i=0;i<N;i++){
	acquire(lock);
	// ----- Critical section entry
	counter+=1;
	// ----- Critical section exit
	release(lock);
  }
  return NULL;
}

int main(int argc, char *argv[])
{

  printf("At start counter is %d\n", counter);

  unsigned char *lock=calloc(1,sizeof(unsigned char));
  *lock=0; // Ensure lock is free in the first place

  pthread_t t1,t2;
  void *ret;

  pthread_create(&t1, NULL, run, lock);
  pthread_create(&t2, NULL, run, lock);

  pthread_join(t1, ret);
  pthread_join(t2, ret);

  printf("At end counter is %d\n", counter);

  free(lock);
  return 0;
}
