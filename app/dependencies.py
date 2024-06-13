import redis

from app.redis import pool


# Here, we re-use our connection pool
# not creating a new one
def get_redis():
    return redis.Redis(connection_pool=pool)
