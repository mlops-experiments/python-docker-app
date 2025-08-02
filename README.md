# python-docker-app
Learn docker basics for Machine learning with python code

# 🐳 Docker Learning Lab – Python App



---

## 🧪 Task 1: Create a Python App and Run It with Docker

### ✅ Steps
1. Create a simple Python file (`app.py`) that accepts optional input.
2. Write a `Dockerfile` for this app.
3. Build and run the Docker image locally.

### 🧾 Commands

```bash
docker build -t python-docker-app .
docker run python-docker-app
docker run python-docker-app --input "Hello Docker"
```
---

## 🛠 Task 2: Build & Analyze Docker Image

### 🧾 Build from VS Code or Docker Desktop

```bash
docker build -t my-app:v1 .
```


# Run the Docker image without input
```
docker run my-app:v1
```

# Run the Docker image with input argument
```
docker run my-app:v1 --input "Custom Input"
```


# Run the container interactively with a name and open a terminal
```
docker run -it --name my-python-demo my-app:v1 /bin/bash
```

- This command opens a shell (/bin/bash) inside the container

- Inside the container, explore files and run scripts:

```
ls
cd /app
python app.py
```


## 🧪 Task 3: Dockerfile Experiments
🔁 Make Changes in Dockerfile
Comment or modify the CMD line in your Dockerfile to experiment with behavior.

Rebuild the image:

```
docker build -t my-app:v3 .
```
Run the updated image:

```
docker run my-app:v3
```
📁 Copy Files from Host to Container

# Copy a Python file from your host machine to the container
```
docker cp myscript.py my-python-demo:/app/
```
🧹 Container Management

▶️ Start a Stopped Container
```
docker start -ai my-python-demo
```
❌ Remove/Delete a Container
```
docker rm my-python-demo
```
📁 Extra: Explore Work Directory & Files

# Open terminal/exec inside container
```
docker exec -it my-python-demo /bin/bash
```

# Navigate and inspect
```
cd /app
ls
python app.py
```

🎯 Continue Learning:

- Add environment variables using ENV

- Mount volumes for persistent data

- Use docker-compose for multi-container apps

