#!/bin/sh

declare -i n
n=1024*1024
q=$(python -c "import random; print ' '.join([str(random.randint(1,100)) for x in range($1)])")
echo $q
for x in $q;
do
	
	./reader data/randat$x.dat $n >> $2
done
