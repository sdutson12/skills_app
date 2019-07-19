import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initSelect2 } from '../plugins/init_select2';
import { stars } from '../plugins/init_stars';
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';

initSelect2();
stars();
initMapbox();
loadDynamicBannerText();
