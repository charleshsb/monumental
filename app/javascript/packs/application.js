import "bootstrap";
import { initSiema } from "../plugins/siema";
import { initFlatpickr } from "../plugins/flatpickr";
import { priceForModal, confirmBooking } from "../plugins/modal";
import { toggleTabs } from "../plugins/tabs";

initFlatpickr();
priceForModal();
confirmBooking();
initSiema();
toggleTabs();