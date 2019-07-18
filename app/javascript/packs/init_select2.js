import $ from 'jquery';
import select2 from 'select2';

const sports = ["Amsterdam", "Bali", "Barcelona", "Belo Horizonte", "Berlin", "Bordeaux", "Brussels", "Buenos Aires", "Casablanca", "Chengdu", "Copenhagen", "Kyoto", "Lausanne", "Lille", "Lisbon", "London", "Lyon", "Marseille", "Melbourne", "Mexico", "Milan", "Montréal", "Nantes", "Paris", "Rio de Janeiro", "São Paulo", "Shanghai", "Shenzhen", "Tel Aviv", "Tokyo"];

const locations = ["Boston", "Denver", "Los Angeles", "New York City", "San Diego"];


const initSelect2 = () => {
  $('.select2').select2({
    data: cities,
    width: '100%'
  });
};

export { initSelect2 };


import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };
