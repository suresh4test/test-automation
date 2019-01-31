#!/usr/bin/env bash
echo "Verify Docker install status"
if [[ $(which docker) && $(docker --version) ]]
   then
    echo Docker is installed on `hostname`
   else
    echo Docker not installed
fi

echo "verify for nginx container"
container=$(docker images -q web)
echo $container
if [[ -n "$container" ]]
  then
  echo "nginx Container exists"
  else
  echo "nginx container not running"
fi

echo "Validate Application"
status="$(curl -Is http://127.0.0.1:8080 | head -1)"
validate=( $status )
if [ ${validate[-2]} == "200" ]; then
  echo "Application is up"
  else
  echo "Application is not running"
fi
