from http.server import HTTPServer, BaseHTTPRequestHandler

class Server(BaseHTTPRequestHandler):

    def do_Get(self):
        if self.path == "/":
            pass
        try:
            fileOpen = open("index.html").read()
            self.send_response(200)
        except:
            pass

        self.end_headers()
        self.wfile.write(bytes(fileOpen, "utf-8"))

httpd = HTTPServer(("localhost", 8080), Server)
httpd.serve_forever()