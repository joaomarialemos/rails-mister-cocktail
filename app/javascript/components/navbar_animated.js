import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["World's most dangerous,", "Cocktails"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
