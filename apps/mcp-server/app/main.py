from fastmcp import FastMCP
import uvicorn

# Initialize FastMCP server
mcp = FastMCP("Vega-AI")

@mcp.tool()
def health_check() -> str:
    """Check the health of the Vega-AI MCP server."""
    return "SERVING"

# Run with FastMCP's built-in development server (SSE transport for external clients)
if __name__ == "__main__":
    # NOTE: In production we will run this differently depending on the transport
    mcp.run()
