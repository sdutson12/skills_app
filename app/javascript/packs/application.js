import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initSelect2 } from '../plugins/init_select2';
initSelect2();

import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

 // <-- you need to uncomment the stylesheet_pack_tag in the layout!



