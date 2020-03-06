FROM orangelabschina/oex-recsys:nameko


WORKDIR /workplace

COPY . .


RUN chgrp -R 0 /workplace
RUN chmod -R g+rwX /workplace 

#EXPOSE 5000

ENTRYPOINT RABBIT_HOSTNAME=$RABBITMQ_HOSTNAME nameko run register --config config.yml 