---
name: backend-architect
description: Full-stack API and Database architecture. Use for REST APIs (FastAPI, .NET, Node), MySQL schema design, query optimization, and secure webhook handling.
---

# Backend & Database Architecture

## Overview
This skill covers the design, implementation, and optimization of backend systems and relational databases (MySQL). It focuses on security, scalability, and high-performance data access.

## Core Capabilities

### 1. REST API & Microservices
- **Frameworks:** FastAPI, C# .NET Core, Node.js.
- **Tasks:** Endpoint creation, request validation, dependency injection, and microservice boilerplate.
- **Focus:** Interface-driven service layers and standardized JSON responses.

### 2. API Security & Rate Limiting
- **Mechanisms:** JWT Authentication, CORS, Rate Limiting (Sliding Window/Token Bucket).
- **Execution:** Implement middleware and security headers to patch vulnerabilities.

### 3. Webhook Handling
- **Integration:** Stripe, GitHub, etc.
- **Focus:** Payload signature verification, idempotency logic, and secure endpoints.

### 4. MySQL Schema Design & Migrations
- **Tasks:** Normalization, CREATE TABLE scripts, Primary/Foreign keys.
- **Migrations:** BEGIN...COMMIT transaction blocks with zero-data-loss rollback scripts.

### 5. Query Optimization & ORM
- **Tools:** Entity Framework Core (C#), SQLAlchemy (Python), Hibernate (Java).
- **Tasks:** Slow query analysis, B-Tree/Composite indexing, and Repository patterns.

## Design Principles
- **Security by Default:** Always include validation and authentication logic.
- **Data Integrity:** Use transactions for all state-changing operations.
- **Efficiency:** Optimize queries for minimal execution time and resource usage.
