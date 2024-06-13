from fastapi import Depends, HTTPException
from fastapi.routing import APIRouter

from app.dependencies import get_redis
from app.schema import DataSchema, HealthcheckSchema

router = APIRouter()


@router.get("/healthcheck-redis", response_model=HealthcheckSchema)
def home(redis=Depends(get_redis)):
    redis.set("check", "pass")
    response = redis.get("check")
    return HealthcheckSchema(check=response)
