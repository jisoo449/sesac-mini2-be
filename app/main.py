from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def getUserInfo() -> dict:
    return {"name":"박지수", "age":"28", "gender":"female"}