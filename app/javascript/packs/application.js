import "bootstrap";
import { mySiema } from "../plugins/siema";
import { initFlatpickr } from "../plugins/flatpickr";
import { priceForModal, confirmBooking } from "../plugins/modal";

initFlatpickr();
// mySiema();
priceForModal();
confirmBooking();
