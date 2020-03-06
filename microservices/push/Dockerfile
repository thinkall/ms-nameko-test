FROM orangelabschina/oex-recsys:nameko


WORKDIR /workplace

COPY . .


RUN chgrp -R 0 /workplace
RUN chmod -R g+rwX /workplace

USER recsys

#EXPOSE 5000

ENTRYPOINT nameko run push