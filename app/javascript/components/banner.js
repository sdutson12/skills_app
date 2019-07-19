import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["APTITUDE"],
    typeSpeed: 150,
    loop: false,
    showCursor: false
  })
}

export { loadDynamicBannerText };
