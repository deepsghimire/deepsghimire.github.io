build:
	npx @11ty/eleventy
serve:
	npx @11ty/eleventy --serve --watch --incremental -- --host 0.0.0.0 --port 8081

.PHONY: build serve
