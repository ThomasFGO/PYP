// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "bootstrap";
import { French } from "flatpickr/dist/l10n/fr.js"

flatpickr(".datepicker", {
  altInput: true,
  "locale": French,
  disableMobile: true,
  altFormat: "j F Y"
})
