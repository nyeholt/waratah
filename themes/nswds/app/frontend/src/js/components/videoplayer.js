export default function initVideoPlayer() {
    /**
     * Handle video playing in dialogs
     */
    let iframeLoadedEvent = function(ev) {
      // play, on load
      playVideo(this);
    };

    let loadVideo = function(tgt) {
      let iframe = tgt.querySelector('iframe');
      if(iframe) {
        iframe.addEventListener(
          "load",
          iframeLoadedEvent
        );
        // play, may have already loaded
        playVideo(iframe);

      }
    };

    let playVideo  = function(iframe) {
      try {
        let cmd = JSON.stringify({
          event: 'command',
          func: 'playVideo',
          args: ''
        });
        iframe.contentWindow.postMessage(cmd, '*');
      } catch(e) {
        console.error('playVideo failed:' + e);
      }
    };

    let pauseVideo = function(tgt) {
      try {
        let iframe = tgt.querySelector('iframe');
        let cmd = JSON.stringify({
          event: 'command',
          func: 'pauseVideo',
          args: ''
        });
        iframe.contentWindow.postMessage(cmd, '*');
        // remove the load event
        iframe.removeEventListener('load', iframeLoadedEvent);
      } catch (e) {
        console.error('pauseVideo failed:' + e);
      }
    };

    document.querySelectorAll('.wrth-video-gallery .nsw-dialog').forEach( (dialog) => {
      try {
        let observer = new MutationObserver(
          (mutationList) => {
            mutationList.forEach((mutation) => {
              switch(mutation.type) {
                case "attributes":
                  switch(mutation.attributeName) {
                    case "aria-expanded":
                      if(mutation.oldValue == 'true') {
                        // was true
                        pauseVideo(mutation.target);
                      } else {
                        // was nothing
                        loadVideo(mutation.target);
                      }
                      break;
                  }
                  break;
              }
            });
          }
        );

        observer.observe(
          dialog,
          {
            attributes: true,
            attributeOldValue: true,
            attributeFilter: [
              'aria-expanded'
            ]
          }
        );

      } catch (e) {
        console.error(e);
      }
    });
}
