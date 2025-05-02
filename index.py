from http.server import BaseHTTPRequestHandler, HTTPServer
import os

PORT = int(os.environ.get("PORT", 8080))  # App Runnerが使うポート

class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(b"Hello from Python without Flask!")

if __name__ == "__main__":
    server = HTTPServer(("", PORT), SimpleHandler)
    print(f"Starting server on port {PORT}")
    server.serve_forever()
