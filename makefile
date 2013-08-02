HCC=ghc --make
all:
	$(HCC) reversefile.hs

clean:
	rm -rf ./*.hi
	rm -rf ./*.o
	rm -rf ./*~

install:
	rm /usr/bin/reversefile
	cp ./reversefile /usr/bin

