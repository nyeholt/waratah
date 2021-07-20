// application of the the modules
import initSlimSelect from './components/slimselect';

function initAppMain() {
    try {
        // remove no-js
        (function(e){e.className=e.className.replace(/\bno-js\b/,'js')})(document.documentElement);
        // init the site
        window.NSW.initSite();
        // init components
        initSlimSelect();
    } catch (e) {
        console.warn(e);
    }
}
initAppMain();
