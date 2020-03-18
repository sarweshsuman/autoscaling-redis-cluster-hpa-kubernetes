#  @Author: https://github.com/sarweshsuman
#  @Description:
#     This starts redis server and then starts redis cluster coordinator process

export PATH=$PATH:/root/go/bin

redis-server /redis.conf &

go get github.com/sarweshsuman/redis-cluster-go-coordinator

redis-cluster-go-coordinator
