# Node App Docker Example

This repository contains a simple Node.js application that demonstrates two Docker build approaches:
1. **Single-Stage Build** – A straightforward approach using one Dockerfile.
2. **Multi-Stage Build** – An optimized approach that produces a smaller and more secure image for production.

## File Structure

node-app/ ├── Dockerfile # Single-stage build Dockerfile ├── Dockerfile.multi # Multi-stage build Dockerfile ├── .dockerignore # Files to exclude from the Docker build context ├── package.json # Node.js project metadata and dependencies ├── package-lock.json # Dependency lock file (generated by npm) └── server.js # Express.js server entry point

## Application Overview

- **server.js**: A simple Express.js server that listens on port `3000` and responds with a greeting message.
- **package.json**: Defines the project metadata and the dependency on Express.
- **.dockerignore**: Excludes unnecessary files (like `node_modules` and `.git`) from the Docker build context, keeping the image lean.

## Building and Running the Application

### 1. Single-Stage Build

This build uses the `Dockerfile` to create an image that installs dependencies and runs the application in one stage. The image will be larger because it includes build tools and extra files.

**Build:**

```bash
docker build -t node-app-single .
docker run -p 3000:3000 node-app-single



docker build -t node-app-multi -f Dockerfile.multi .
docker run -p 3000:3000 node-app-multi





---

This README provides a clear overview of the project structure, the differences between the two Docker build methods, and step-by-step instructions for building and running the containers.

