import "bootstrap";
import { initSiema } from "../plugins/siema";
import { initFlatpickr } from "../plugins/flatpickr";
import { priceForModal, confirmBooking } from "../plugins/modal";
// import { toggleTabs } from "../plugins/";

initFlatpickr();
priceForModal();
confirmBooking();
initSiema();
// toggleTabs();
