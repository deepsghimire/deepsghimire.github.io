export default function(eleventyConfig) {
    return {
        dir: {
            input: "src",
            output: "_site"
        },
        pathPrefix: process.env.ELEVENTY_PATH_PREFIX || "/"
    }
}
