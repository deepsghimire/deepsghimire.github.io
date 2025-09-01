# Hugo source directory
HUGO_SRC=src
# Hugo output directory (top-level)
HUGO_PUBLIC=public

.PHONY: serve build deploy

# Run local dev server
serve:
	hugo server -s $(HUGO_SRC)\
		-D \
		--bind 0.0.0.0 \
		--port 1313 \
		--printPathWarnings \
		--disableFastRender \
		--baseURL "http://$$(hostname -f|awk '{print $$1}'):1313/"

# Build production site
build:
	hugo -s $(HUGO_SRC) -d $(HUGO_PUBLIC) --minify

# Deploy: commit & push source to main, triggers GitHub Actions
deploy:
	@git add $(HUGO_SRC) .github
	@git commit -m "Update site content" || echo "No changes to commit"
	@git push origin main

