# Astro + Nginx + Docker Boilerplate

**Description:**
This is a boilerplate for building websites using [Astro](https://astro.build/), with **Nginx** as a reverse proxy and **Docker** for containerization. It provides a fast, efficient setup for static site generation with all the configurations you need to deploy your website quickly and easily.

### Features:
- **Astro** for fast, optimized static site generation.
- **Nginx** for handling web traffic and acting as a reverse proxy.
- **Docker** for containerizing the app to ensure consistency across different environments.
- Simple deployment with **Docker Compose**.

---

### Getting Started

#### Prerequisites:
Before you begin, ensure you have the following installed:
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

#### Installation Steps:

1. **Clone the Repository:**
   
   ```git clone https://github.com/your-username/astro-docker-nginx-boilerplate.git```
   ```cd astro-docker-nginx-boilerplate```

2. **Set Up Astro Project: If you haven't set up an Astro project yet, you can do so:**
   ```npm create astro@latest```

3. **Create Dockerfile: In the project root, create a Dockerfile for containerizing your Astro app:**
   Use Node.js base image
``FROM node:14``

Set the working directory
``WORKDIR /app``

Copy package.json and package-lock.json
``COPY package*.json ./``

Install dependencies
``RUN npm install``

Copy the rest of the application
``COPY . .``

Build the Astro site
``RUN npm run build``

Expose the port that the app will run on
``EXPOSE 3000``

Start the application
``CMD [ "npm", "run", "start" ]``
