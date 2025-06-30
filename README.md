# 🚀 Docker Web Server

This project demonstrates how to deploy a simple static website using **Docker** and **Nginx**.

---

## 📦 Files

- `index.html` - The homepage of the website
- `Dockerfile` - Dockerfile to build the Nginx web server container
- `README.md` - Project documentation

---

## 🛠️ Build Instructions

### 1. Build the Docker Image
```bash
docker build -t my-webserver .
```

### 2. Run the Docker Container
```bash
docker run -d -p 8080:80 --name dockerwebserver my-webserver
```

### 3. Open in Browser

Visit [http://localhost:8080](http://localhost:8080) to view your site.

---

## 🧹 Useful Docker Commands

```bash
# Stop the running container
docker stop dockerwebserver

# Remove the container
docker rm dockerwebserver

# Remove the image
docker rmi my-webserver

# View running containers
docker ps

# View container logs
docker logs dockerwebserver

# Access the container shell
docker exec -it dockerwebserver /bin/sh
```

---

## 📄 How it Works

- The `Dockerfile` uses the official [nginx:alpine](https://hub.docker.com/_/nginx) image.
- Your static files are copied into the Nginx web root (`/usr/share/nginx/html`).
- Nginx serves your static site on port **80** inside the container, mapped to **8080** on your host.

---

## 🐳 Why Docker?

- **Portability:** Run your site anywhere Docker is available.
- **Isolation:** No need to install Nginx or dependencies on your host.
- **Simplicity:** One command to build, one to run.

---

## 📚 Learn More

- [Docker Documentation](https://docs.docker.com/)
- [Nginx Documentation](https://nginx.org/en/docs/)
