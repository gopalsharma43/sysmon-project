# 1. Start with a fresh, blank Ubuntu operating system
FROM ubuntu:latest

# 2. Tell this new OS to install the C++ compiler, just like you did earlier!
RUN apt-get update && apt-get install -y g++

# 3. Create a folder inside this container called /app and move inside it
WORKDIR /app

# 4. Copy your monitor.cpp file from your WSL computer into this new container
COPY monitor.cpp .

# 5. Compile the code inside the container
RUN g++ monitor.cpp -o monitor

# 6. Tell the container what to do when someone starts it
CMD ["./monitor"]
