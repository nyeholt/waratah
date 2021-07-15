import flatpickr from 'flatpickr';

export default function initFlatPickr() {
    // Datepicker
    const dp = document.querySelectorAll('input.date-picker,input[type="date"],input[type="datetime-local"]');
    if (dp && dp.length > 0) {
        dp.forEach(input => {
            const defaultDate = (input.dataset.default) ? (input.dataset.default) : new Date();
            let dateFormat = "Y-m-d";
            let altFormat = "d/m/Y";
            let enableTime = false;
            if(input.type == "datetime-local") {
              enableTime = true;
              dateFormat = "Y-m-d H:i";
              altFormat = "d/m/Y H:i";
            }
            flatpickr(input, {
                enableTime: enableTime,
                altInput: true,
                altFormat: altFormat,
                dateFormat: dateFormat,
                defaultDate: (input.value) ? input.value : defaultDate
            });
        });
    }
    // Timepicker
    const tp = document.querySelectorAll('input.time-picker,input[type="time"]');
    if (tp && tp.length > 0) {
        tp.forEach(input => {
            flatpickr(input, {
                enableTime: true,
                noCalendar: true,
                dateFormat: "H:i",
                altInput: true,
                altFormat: "H:i",
                time_24hr: true
            });
        });
    }


}
