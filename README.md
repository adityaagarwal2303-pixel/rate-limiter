# 🚦 Rate Limiter using Spring Boot, Redis, Docker, Prometheus & Grafana

A production-ready **Rate Limiter** built with **Spring Boot** and **Redis** that supports multiple rate-limiting algorithms, dynamic user plans, monitoring with Prometheus & Grafana, Docker deployment, and rate limit headers.

---

## 📌 Features

- ✅ Fixed Window Rate Limiting
- ✅ Sliding Window Rate Limiting
- ✅ Token Bucket Rate Limiting
- ✅ Redis-based request storage
- ✅ Dynamic user plans (Basic, Premium, Admin)
- ✅ Configurable rate limiting algorithm
- ✅ HTTP Rate Limit Headers
- ✅ Custom Exception Handling
- ✅ Prometheus Metrics
- ✅ Grafana Dashboard
- ✅ Docker & Docker Compose Support
- ✅ Professional Logging (SLF4J)
- ✅ Spring Boot Actuator

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Java 25 | Programming Language |
| Spring Boot | Backend Framework |
| Redis | Request Counter Storage |
| Maven | Dependency Management |
| Docker | Containerization |
| Docker Compose | Multi-container Deployment |
| Prometheus | Metrics Collection |
| Grafana | Metrics Visualization |
| Micrometer | Metrics Export |
| Spring Boot Actuator | Monitoring Endpoints |

---

# 📂 Project Structure

```
rate-limiter
│
├── src
│   ├── algorithm
│   ├── config
│   ├── controller
│   ├── exception
│   ├── factory
│   ├── interceptor
│   ├── model
│   ├── repository
│   ├── service
│   └── util
│
├── docker-compose.yml
├── Dockerfile
├── prometheus.yml
├── pom.xml
└── README.md
```

---

# ⚙️ Supported Algorithms

The project supports three different rate-limiting algorithms.

### 1. Fixed Window

Limits requests within a fixed time interval.

Example:

```
5 requests / 60 seconds
```

---

### 2. Sliding Window

Provides smoother rate limiting by considering requests in a rolling time window.

---

### 3. Token Bucket

Generates tokens at a fixed rate.

Requests are allowed only if a token is available.

---

# 👤 User Plans

| API Key | Requests | Window |
|----------|----------|--------|
| Default | 5 | 60 sec |
| premium | 50 | 60 sec |
| admin | Unlimited | 60 sec |

Example Header

```
X-API-KEY: premium
```

---

# 🚀 Running the Project

## Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/rate-limiter.git
```

```
cd rate-limiter
```

---

## Build Project

Windows

```bash
.\mvnw.cmd clean package -DskipTests
```

Linux/Mac

```bash
./mvnw clean package -DskipTests
```

---

## Run using Docker

```bash
docker compose up --build
```

---

# 🌐 API Endpoint

```
GET /hello
```

Example

```
GET http://localhost:8080/hello
```

Header

```
X-API-KEY: user1
```

---

# 📊 Rate Limit Headers

Every successful request returns

```
X-RateLimit-Limit
X-RateLimit-Remaining
X-RateLimit-Reset
```

If the limit is exceeded

```
Retry-After
```

is also returned.

---

# 📈 Monitoring

### Spring Boot Actuator

```
http://localhost:8080/actuator
```

### Prometheus Metrics

```
http://localhost:8080/actuator/prometheus
```

### Prometheus UI

```
http://localhost:9090
```

### Grafana

```
http://localhost:3000
```

Default Login

```
Username : admin
Password : admin
```

---

# 📊 Custom Metrics

The project exports

```
rate_limiter_allowed_requests_total

rate_limiter_blocked_requests_total
```

These can be visualized directly in Grafana.

---

# 📝 Sample Response

```
HTTP/1.1 200 OK

Hello! Request Allowed
```

Headers

```
X-RateLimit-Limit: 5
X-RateLimit-Remaining: 4
X-RateLimit-Reset: 58
```

---

# ❌ Rate Limit Exceeded

```
HTTP/1.1 429 Too Many Requests
```

Response

```
Rate Limit Exceeded!
```

---

# 🐳 Docker Containers

The application runs four containers.

- Spring Boot Application
- Redis
- Prometheus
- Grafana

---

# 🔄 Configuration

Choose the algorithm in

```
application.properties
```

Example

```properties
rate-limiter.type=FIXED_WINDOW
```

Available values

```
FIXED_WINDOW

SLIDING_WINDOW

TOKEN_BUCKET
```

---

# 📸 Screenshots

You can add screenshots here.

- Swagger UI
- Grafana Dashboard
- Prometheus
- Docker Containers
- Postman Requests

---

# 🔮 Future Improvements

- GitHub Actions CI/CD
- Kubernetes Deployment
- JWT Authentication
- Role-Based Rate Limiting
- API Gateway Integration
- Unit & Integration Tests
- Distributed Rate Limiting
- Alerting with Prometheus

---

# 👨‍💻 Author

**Aditya Agarwal**

GitHub:
https://github.com/YOUR_USERNAME

LinkedIn:
https://www.linkedin.com/in/YOUR_LINKEDIN

---

## ⭐ If you found this project useful, consider giving it a Star!