import uvicorn

from app.settings import settings


def main():
    if __name__ == "__main__":
        uvicorn.run("app.application:get_app", host=settings.FASTAPI_HOST, port=settings.FASTAPI_PORT, reload=True)


if __name__ == "__main__":
    main()
