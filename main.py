from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root(): 
    return {"message": "Hello, World!"}

#Set up the server to run on port 8000
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
    print("Server is running on http://")


