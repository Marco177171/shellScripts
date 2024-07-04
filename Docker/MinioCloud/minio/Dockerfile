FROM minio/minio

RUN echo starting minio with ${MINIO_ROOT_USER} | ${MINIO_ROOT_PASSWORD}

EXPOSE ${MINIO_PORT}

CMD ["server", "--console-address", ":9001", "/data"]