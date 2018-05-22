all: 

gtsrb: data/GTSRB_Final_Training_Images data/GTSRB_Final_Test_Images

data/%: %.zip
	mkdir -p $@
	mv $< $@
	cd $@
	unzip $@.zip
GTSRB_Final_Training_Images.zip:
	wget http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Training_Images.zip
GTSRB_Final_Test_Images.zip:
	wget http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Test_Images.zip
GTSRB_Final_Test_GT.zip:
	wget http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Test_GT.zip

ptb: data/PTB/

data/PTB/: simple-examples.tgz
	mkdir -p $@
	cd $@ && tar xvf ../../$<

simple-examples.tgz: 
	wget http://www.fit.vutbr.cz/~imikolov/rnnlm/simple-examples.tgz

clean_depends:
	$(RM) GTSRB_Final_Test_GT.zip GTSRB_Final_Test_Images.zip GTSRB_Final_Training_Images.zip simple-examples.tgz

.PHONY: all gtsrb ptb
