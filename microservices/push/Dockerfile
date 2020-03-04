FROM orangelabschina/oex-recsys:nameko


WORKDIR /workplace

COPY . .

RUN chmod -R 777 /workplace
RUN chown -R recsys:root /workplace

USER recsys

#EXPOSE 5000

ENTRYPOINT nameko run push