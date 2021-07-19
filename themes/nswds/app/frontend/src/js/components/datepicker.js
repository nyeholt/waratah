import tinyDatePicker from 'tiny-date-picker';

export default function initDatePicker() {
    // Datepicker
    const dp = document.querySelectorAll('input.date-picker,input.hasDatepicker,input[type="date"],input[type="datetime-local"]');
    if (dp && dp.length > 0) {
        dp.forEach(input => {
            let options = {};
            options.highlightedDate = (input.dataset.highlightedDate) ? input.dataset.highlightedDate : new Date();
            try {
              let lang = (input.dataset.lang) ? JSON.parse(input.dataset.lang) : null;
              if(lang) {
                options.lang = lang;
              }
            } catch (e) {
              console.warn(e);
            }
            let min = (input.dataset.min) ? input.dataset.min : null;
            if(min) {
              options.min = min;
            }
            let max = (input.dataset.max) ? input.dataset.max : null;
            if(max) {
              options.max = max;
            }
            options.pickTime = (input.type == 'time' || input.type == 'datetime-local' || input.dataset.pickTime);
            options.timeFormat = (input.dataset.timeFormat) ? input.dataset.timeFormat : 24;
            options.mode = (input.dataset.mode) ? input.dataset.mode : 'dp-below';
            options.dayOffset = (input.dataset.dayoffset) ? input.dataset.dayoffset : 1;
            options.input = input;
            try {
              tinyDatePicker(options);
            } catch (e) {
              console.warn(e);
            }
        });
    }

};
