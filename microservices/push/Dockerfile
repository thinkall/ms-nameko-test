FROM orangelabschina/oex-recsys:nameko


WORKDIR /workplace

COPY . .


RUN chgrp -R 0 /workplace
RUN chmod -R g+rwX /workplace 

#EXPOSE 5000

ENTRYPOINT RABBITMQ_HOSTNAME=$RABBITMQ_HOSTNAME nameko run push --config config.yml 