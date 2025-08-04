# python-docker-app
Learn docker basics for python code

# 🐳 Docker Learning

## 🧪 Task 1: Create a Python App and Run It with Docker

### ✅ Steps
1. Create a simple Python file (`app.py`) that accepts optional input.
2. Write a `Dockerfile` for this app.
3. Build and run the Docker image locally.

### 🧾 Commands

```bash
docker build -t my-image .
docker run my-image
docker run my-image --input "Hello Docker"
```


## 🐳 Docker Image Commands Summary

| **Action**             | **Command**                                         | **Description**                                              |
|------------------------|------------------------------------------------------|--------------------------------------------------------------|
| Build Docker image     | `docker build -t my-app:v1 .`                        | This will create a Docker image                             |
| Run image              | `docker run my-app:v1`                               | Runs the Docker image without container name                |
| Run with container name| `docker run --name conta1 my-app:v1`                | Runs the image and assigns container name `conta1`          |
| Interactive run (no name) | `docker run -it my-app:v2`                        | Runs the image interactively without a container name       |
| Interactive run (with name) | `docker run -it --name conta3 my-app:v2`       | Runs the image interactively and names it `conta3`          |
| Bash shell inside container | `docker run -it --name conta4 my-app:v4 /bin/bash` | Launches container with `bash` shell for terminal access    |
| Self-contained Linux   | –                                                    | This provides a self-contained mini Linux environment       |
| Check container        | –                                                    | Use `docker ps` or `docker inspect`                         |
| Check working directory| –                                                    | Inside container, use `pwd` or check Dockerfile `WORKDIR`   |
| Check exec             | `docker exec -it conta4 /bin/bash`                  | Execute bash inside a running container                     |
| Run Python file        | `python app.py`                                     | Run Python script from inside container terminal            |
| restart container	     |docker start -ai conta4
|delete container	     |docker rm conta4



## 🧪 Docker Learning Tasks

| **Task** | **Topic**           | **Details**                                          |
|----------|---------------------|-------------------------------------------------------|
| Task 1   | `python-docker-app` | Project setup                                        |
|          |                     | Run it locally                                       |
|          |                     | Test with input and without input                    |
| Task 2   | Build Image          | Create Docker image                                 |
|          |                     | Build from VS Code                                  |
|          |                     | Build from Docker Desktop                           |
|          |                     | Test with input and without input                    |
| Task 3   | `docker run`         | Run Docker image                                    |




🎯 Continue Learning:

- Add environment variables using ENV

- Mount volumes for persistent data

- Use docker-compose for multi-container apps

