import redis
r = redis.Redis(host='10.0.8.3', port=6379, decode_responses=True)
r.flushall()
