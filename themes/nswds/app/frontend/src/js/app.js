function main() {
    try {
        (function(e){e.className=e.className.replace(/\bno-js\b/,'js')})(document.documentElement);
        window.NSW.initSite();
    } catch (e) {
        console.warn(e);
    }
}
main();
