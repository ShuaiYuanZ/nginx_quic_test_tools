all: libapr ab apr-skeleton

libapr:
	make -C ./apr/ all
	

apr-skeleton: apr-skeleton.c 
	gcc apr-skeleton.c -o apr-skeleton -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -static -lapr-1 -Wl,-Bdynamic -lpthread -lc -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE -g 

#	gcc apr-skeleton.c -o apr-skeleton -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -lapr-1 -lpthread -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE

ab: ab.c ap_release.h
	gcc ab.c ap_release.h -o ab -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -L./apr/aprutil-build/lib/ -static -lapr-1 -laprutil-1 -Wl,-Bdynamic -lm -lc -lpthread -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE -g -I/home/shuaiyuan/openssl/include/ -L/lib64/ -l:libssl.so.1.1 -l:libcrypto.so.1.1

#	gcc ab.c ap_release.h -o ab -I./apr/aprutil-build/include/apr-1/ -I./apr/apr-build/include/apr-1/ -L./apr/apr-build/lib/ -L./apr/aprutil-build/lib/ -lapr-1 -laprutil-1 -lm  -lpthread -D_REENTRANT -D_GNU_SOURCE -D_LARGEFILE64_SOURCE



clean:
	make -C ./apr/ clean
	rm ab apr-skeleton
