// Core components
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

// Project components
import '../../../../../../../../../waratah-branding/frontend/src/app.js';

$('.nsw-layout__main table').wrap('<div class="nsw-table-responsive" role="region" aria-labelledby="caption0" tabindex="0">');
