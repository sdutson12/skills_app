import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
    strings: ["APTITUDE"],
    typeSpeed: 150,
    loop: false,
    showCursor: false
    })
  }
}

export { loadDynamicBannerText };
