// application of the the modules
import initMicroModal from './components/micromodal';
import initSlimSelect from './components/slimselect';
import initDatePicker from './components/datepicker';
import initStickyJS from './components/stickyjs';

function initAppMain() {
    try {
        // remove no-js
        (function(e){e.className=e.className.replace(/\bno-js\b/,'js')})(document.documentElement);
        // init the site
        window.NSW.initSite();
        // init components
        initMicroModal();
        initSlimSelect();
        initDatePicker();
        initStickyJS();
    } catch (e) {
        console.warn(e);
    }
}
initAppMain();
