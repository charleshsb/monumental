import Siema from 'siema';

const initSiema = () => {
  const mySiema = new Siema({
    selector: '.siema',
    duration: 150,
    easing: 'ease-out',
    perPage: 1,
    startIndex: 0,
    draggable: true,
    multipleDrag: true,
    threshold: 20,
    loop: true,
    rtl: false,
    onInit: () => {},
    onChange: () => {},
    });

  setInterval(() => mySiema.next(), 3000)
}




export { initSiema };
