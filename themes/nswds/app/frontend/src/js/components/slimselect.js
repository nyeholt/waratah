import SlimSelect from 'slim-select';

export default function initSlimSelect() {
    /**
     * Apply slim-select to any multiple select inputs
     */
    document.querySelectorAll('select[multiple]').forEach( (listbox) => {
      try {
        let placeholder = listbox.getAttribute('placeholder');
        let searchText = listbox.dataset.searchText;
        new SlimSelect({
            select: listbox,
            placeholder: placeholder ? placeholder : 'Select one or more items',
            searchText: searchText ? searchText : 'Sorry couldn\'t find anything..'
        });
      } catch (e) {
        console.error(e);
      }
    });
}
