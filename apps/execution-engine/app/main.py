from fastapi import FastAPI
import uvicorn

app = FastAPI(title="Vega Execution Engine")

@app.get("/health")
def health_check():
    return {"status": "SERVING"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
