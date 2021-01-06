FROM ubuntu:18.04
RUN apt install g++
#RUN apt install build-essential
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install --yes wget 
RUN apt-get install --yes build-essential libgl1-mesa-dev
RUN wget https://download.qt.io/archive/qt/5.12/5.12.8/qt-opensource-linux-x64-5.12.8.run
RUN apt-get install mesa-common-dev
RUN apt-get install libglu1-mesa-dev -y 
RUN apt-get install qtdeclarative5-dev -y
RUN apt-get install -y qt5-default
#RUN apt-get install --yes g++ libgl-dev
ADD . /usr/src/Project
WORKDIR usr/src/Project/app1
RUN qmake -project
RUN qmake app1.pro
RUN echo "QT+=qml" >> app1.pro
RUN make
CMD echo "App build completed"