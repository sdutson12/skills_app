import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
    strings: ["snowboard", "dunk", "ski", "backflip", "surf", "rock climb", "dribble", "swim", "serve" ],
    typeSpeed: 120,
    loop: true,
    showCursor: false,
    })
  }


export { loadDynamicBannerText };
