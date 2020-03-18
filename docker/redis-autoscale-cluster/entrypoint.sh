#  @Author: https://github.com/sarweshsuman
#  @Description:
#     Starts Single Redis Instance in Cluster Mode and Registers with Redis Cluster Coordinator


function launchredis() {
  echo "Launching Redis instance"

  HOSTNAME=`hostname -i`
  
  echo "Registering my Hostname" $HOSTNAME " with coordinator service"

  echo "Coordination Service Host "$REDIS_CLUSTER_COORDINATOR_SERVICE_SERVICE_HOST

  echo "Coordination Service Port "$REDIS_CLUSTER_COORDINATOR_SERVICE_SERVICE_PORT

  redis-cli -h $REDIS_CLUSTER_COORDINATOR_SERVICE_SERVICE_HOST -p $REDIS_CLUSTER_COORDINATOR_SERVICE_SERVICE_PORT lpush REDIS_CLUSTER_REGISTRATION_QUEUE "$HOSTNAME:6379"

  redis-server /redis.conf --protected-mode no
}

launchredis

