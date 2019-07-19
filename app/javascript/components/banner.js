import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');

  if (banner) {
    new Typed('#banner-typed-text', {
    strings: ["to snowboard", "to dunk", "to ski", "to backflip", "to surf", "to do yoga", "to dribble", "to swim", "to serve", "to rock climb"],
    typeSpeed: 120,
    loop: false,
    showCursor: false,
    startDelay: 1000
    })
  }
}

export { loadDynamicBannerText };
