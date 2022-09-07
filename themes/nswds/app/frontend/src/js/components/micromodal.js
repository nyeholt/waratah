import MicroModal from 'micromodal';
export default function initMicroModal() {
  try {
    MicroModal.init();
    let loadUp = document.querySelector('.wrth-mm[data-onload="1"]');
    if(loadUp && loadUp.id) {
      MicroModal.show( loadUp.id );
    }
  } catch(e) {
    console.log(e);
  }
}
