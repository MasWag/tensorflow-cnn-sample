all: data/GTSRB_Final_Training_Images data/GTSRB_Final_Test_Images
data/%: %.zip
	mkdir -p $@
	mv $< $@
	cd $@
	unzip $@.zip
GTSRB_Final_Training_Images.zip:
	wget http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Training_Images.zip
GTSRB_Final_Test_Images.zip:
	wget http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Test_Images.zip
