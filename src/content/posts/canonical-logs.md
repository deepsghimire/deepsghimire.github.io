---
title: Canonical Log Lines in Starlette/FastAPI using structlog
tags:
  - python
  - starlette
  - fastapi
  - logs
  - structlog
---

## Introduction

Implementing [Canonical log lines](https://stripe.com/blog/canonical-log-lines) reduces clutter and aids in gathering insights.
Here, I present a way to implement it in your Starlette or FastAPI application using structlog library.
Although this method can be used with any logging library, powerful features of structlog greatly
improves the developer experience.
