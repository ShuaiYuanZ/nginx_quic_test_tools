APR=apr-1.5.2
APRUTIL=apr-util-1.5.4

all:$(APR) $(APRUTIL) buildapr

$(APR):
	#wget https://archive.apache.org/dist/apr/apr-1.5.2.tar.gz
	#tar -xf $(APR).tar.gz
$(APRUTIL):
	#wget https://archive.apache.org/dist/apr/apr-util-1.5.4.tar.gz
	#tar -xf $(APRUTIL).tar.gz

buildapr:
	cp Makefile_apr $(APR)
	make -C $(APR) -f Makefile_apr	
	cp Makefile_aprutil $(APRUTIL)
	make -C $(APRUTIL) -f Makefile_aprutil

clean:
	#rm -rf apr-*
	#rm -rf aprutil-*
	
