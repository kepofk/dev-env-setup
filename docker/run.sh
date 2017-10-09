#Docker 실행

##설정 
#==================================
USER_NAME=kepo

IMAGE_NAME=ubuntu
#TAG=14.04
TAG=kepo

CONTAINER_NAME=keras

HOST_DIR_PATH=/home/kepo/work/docker/keras/share
CONTAINER_DIR_PATH=/root/share

HOST_PORT=9088
CONTAINER_PORT=8888
#==================================


##처음 컨테이너 생성할 때 
docker run -it --name ${CONTAINER_NAME} --volume ${HOST_DIR_PATH}:${CONTAINER_DIR_PATH} -p ${HOST_PORT}:${CONTAINER_PORT} ${IMAGE_NAME}:${TAG} /bin/bash 

##정리된 컨테이너 다시 시작하고, 접속할 때 
#docker start ${CONTAINER_NAME}
#docker attach ${CONTAINER_NAME}

##컨테이너를 이미지로 만들 때 
#docker commit -a ${USER_NAME} -m "install vim,tmux,anaconda-python3.5" ${CONTAINER_NAME} ${IMAGE_NAME}:kepo

##컨테이너 삭제할 때 
#docker rm ${CONTAINER_NAME}



