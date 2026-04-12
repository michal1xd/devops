import time
from fastapi import FastAPI

app = FastAPI()
start_time = time.time()


@app.get("/")
def read_root():
    return {"status": "ok", "days_to_summer": 85}


@app.get("/health")
def health_check():
    return {"uptime_seconds": round(time.time() - start_time, 2)}
