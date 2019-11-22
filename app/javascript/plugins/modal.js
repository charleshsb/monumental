const calculatePrice = () => {
  const fullDate = document.querySelector("#start_date").value.split('to');
  const startDate = new Date(fullDate[0]);
  const endDate = new Date(fullDate[1]);
  const monument = document.querySelector('#monument');
  const price = Number(monument.dataset.price);
  const totalPrice = (endDate - startDate)/86400*price;
  return totalPrice
}

const priceForModal = () => {
  const button = document.querySelector("#btn_modal")
  button.addEventListener('click', () => {
    const totalPrice = calculatePrice();
    const textPrice = document.getElementById('modalPrice');
    const price = document.createTextNode(` ${totalPrice}$`);
    textPrice.appendChild(price);
  });
}

const confirmBooking = () => {
  const button = document.querySelector("#btn-confirm")
  button.addEventListener('click', () => {
    const buttonHidden = document.querySelector("#button-hidden");
    buttonHidden.click();
  });
}

export { priceForModal, confirmBooking };
