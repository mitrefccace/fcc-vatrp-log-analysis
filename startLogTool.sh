if [[ "$OSTYPE" =~ ^Windows ]]; then
   docker-compose up -d
elif [[ "$OSTYPE" =~ ^msys ]]; then
   docker-compose up -d
else
   sudo docker-compose up -d
fi
