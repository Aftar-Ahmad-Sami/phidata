#!/bin/bash

# Run PostgreSQL with pgvector extension in Docker
docker run -d \
    -e POSTGRES_DB=defaultdb \
    -e POSTGRES_USER=avnadmin \
    -e POSTGRES_PASSWORD=AVNS_R6RE-o-OUS9CapOrd1u \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -e SERVICE_URL="postgres://avnadmin:AVNS_R6RE-o-OUS9CapOrd1u@pg-338e7d49-sjinnovation.f.aivencloud.com:21557/defaultdb?sslmode=require"\
    -v pgvolume:/var/lib/postgresql/data\
    -p 5532:5432\
    --name pgvector\
    phidata/pgvector:16

echo "PostgreSQL with pgvector is running."
echo "Service URL is postgresql://avnadmin:AVNS_R6RE-o-OUS9CapOrd1u@localhost:5532/defaultdb"