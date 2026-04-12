from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"status": "ok", "days_to_summer": 85}
