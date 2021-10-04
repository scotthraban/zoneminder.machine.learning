docker buildx build \
  --platform linux/arm64/v8 \
  --push \
  --tag docker-registry.hraban.com/dlandon-zoneminder.machine.learning-multiserver:latest \
  --tag docker-registry.hraban.com/dlandon-zoneminder.machine.learning-multiserver:1.36.7 \
  .