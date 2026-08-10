import os
import socket
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return{
        "status": "online",
        "hostname": socket.gethostname(),
        "environment": os.getenv("ENVIRONMENT", "development")
    }

@app.get("/health")
def health_check():
    return{
        "status": "ok"
    }
