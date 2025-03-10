from fastapi import APIRouter
from app.service import principal

router = APIRouter(
    # prefix="/main"
)

@router.get("/helloworld")
@router.get("/helloworld/{name}")
async def hello_world(name: str = None) -> str:
    return principal.hello_world(name)

