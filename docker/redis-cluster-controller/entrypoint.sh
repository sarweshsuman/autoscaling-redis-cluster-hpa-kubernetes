#  @Author: https://github.com/sarweshsuman
#  @Description:
#     This starts redis server and then starts redis cluster coordinator process

export PATH=$PATH:/root/go/bin

redis-server /redis.conf &

go install github.com/sarweshsuman/redis-cluster-go-coordinator@latest

redis-cluster-go-coordinator
