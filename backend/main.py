from fastapi import FastAPI
from backend.core.config import settings

app = FastAPI(title = settings.PROJECT_TITLE, version = settings.PROJECT_VERSION)

@app.get(path="/")
def hello() -> dict[str, str]:
    return {"msg": "Hello FastAPI!"}