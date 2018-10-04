#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv){

	if(argc < 3){
		fprintf(stderr,"Usage: generate <file_out> <num_bytes)\n");
		return 1;
	}

	FILE* urand = fopen("/dev/urandom","r");
	if(urand == NULL){
		fprintf(stderr,"Error opening /dev/urandom\n");
		return 1;
	
	}
	char buff[1048576]; //1048576=1024*1024
	
	FILE* output = fopen(argv[1],"w+");
	if(output == NULL){
		fprintf(stderr,"Error opening %s\n",argv[1]);
		return 1;
	}

	long total = atol(argv[2]);
	long needed = total;
	
	while(needed > 0){
		if(needed<1048576){
			fread(buff,sizeof(char),needed,urand);
			fwrite(buff,sizeof(char),needed,output);
		}else{
			fread(buff,sizeof(char),1048576,urand);
			fwrite(buff,sizeof(char),1048576,output);
		}
		needed = needed - 1048576;
	}

	fclose(urand);
	fclose(output);
	
	return 0;

}
