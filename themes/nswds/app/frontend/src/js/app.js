// Core components
import initSlimSelect from './components/slimselect';
import initSideNav from './components/sidenav';
import initMicroModal from './components/micromodal';

function initAppMain() {
    try {
        // remove no-js
        (function(e){e.className=e.className.replace(/\bno-js\b/,'js')})(document.documentElement);
        // init the site
        window.NSW.initSite();
        // init components
        initSlimSelect();
        initSideNav();
        initMicroModal();
    } catch (e) {
        console.warn(e);
    }
}
initAppMain();

// Project components
import '../../../../../../../../../waratah-branding/frontend/src/app.js';
