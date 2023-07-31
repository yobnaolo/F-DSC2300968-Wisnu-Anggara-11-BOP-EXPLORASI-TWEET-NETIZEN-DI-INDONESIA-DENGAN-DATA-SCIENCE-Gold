from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/")
async def index():
    return JSONResponse(
        content = {
            "ok": True,
            "code": 200,
            "data": {
                "version": "1.0.0"
            },
            "message": "Success"
        }
)

from routers import cleansing
from routers import sentiment

app.include_router(cleansing.router, tags=["Cleansing API"])
app.include_router(sentiment.router, tags=["Sentiment API"])



