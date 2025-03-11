import os
from fastapi import APIRouter
from app.service import principal

router = APIRouter(
    # prefix="/main"
)

@router.get("/helloworld")
@router.get("/helloworld/{name}")
async def hello_world(name: str = None) -> str:
    return principal.hello_world(name)


@router.get("/health")
async def health_check():
    return {"status": "ok"}


@router.get("/getpod")
async def hello():
    pod_name = os.getenv("HOSTNAME", "unknown-pod")  # Get pod name from environment
    return {"message": "Hello, World!", "pod": pod_name}
