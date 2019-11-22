import Siema from 'siema';

const initSiema = () => {
  const mySiema = new Siema({
    selector: '.siema',
    duration: 200,
    easing: 'ease-out',
    perPage: 1,
    startIndex: 0,
    draggable: true,
    multipleDrag: true,
    threshold: 20,
    loop: false,
    rtl: false,
    onInit: () => {},
    onChange: () => {},
    });

  setInterval(() => mySiema.next(), 1000)
}




export { initSiema };
