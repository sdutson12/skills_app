import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  console.log('test')
  $('.select2').select2(width: '100%' ); // (~ document.querySelectorAll)
};
// console.log(initSelect2)
export { initSelect2 };
