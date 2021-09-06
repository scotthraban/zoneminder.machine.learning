docker buildx build \
  --progress plain \
  --platform linux/arm64/v8 \
  --push \
  --tag docker-registry.hraban.com/dlandon-zoneminder.machine.learning:latest \
  --tag docker-registry.hraban.com/dlandon-zoneminder.machine.learning:1.0 \
  .