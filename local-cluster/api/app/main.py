from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.routers import principal

app = FastAPI(
    title="Locally K8s - API"
)

app.include_router(principal.router)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
    allow_credentials=True
)
