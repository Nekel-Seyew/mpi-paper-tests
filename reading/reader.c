#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <inttypes.h>


#define UINT64_T  uint64_t


typedef UINT64_T timestamp_t;

//returns microseconds
timestamp_t timestamp_get()
{
	struct timeval current;
	timestamp_t stamp;

	gettimeofday(&current, 0);
	stamp = ((timestamp_t) current.tv_sec) * 1000000 + current.tv_usec;

	return stamp;
}


int main(int argc, char** argv){
	FILE* f = fopen(argv[1],"r");
	int buffsize = atoi(argv[2]);
	char* buff = malloc(buffsize*sizeof(char));
	int c,i;
	//static int k = 0;
	timestamp_t start = timestamp_get();
	fprintf(stdout,"%lu\n",start);
	//for(i=0; i< 10; i++){
	//	rewind(f);
	while((c=fread(buff,1,buffsize,f)) == buffsize){
		//k +=1;
	}
	//}
	timestamp_t end = timestamp_get();
	fprintf(stdout,"%lu\n",end);
	//fprintf(stderr,"%i\n",k);
	fclose(f);
	return 0;	
}
