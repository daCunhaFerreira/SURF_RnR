import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pricer"
export default class extends Controller {
  static targets = [ "start_date", "end_date", "total_price" ]
  static values = {
    price: Number
  }

  calculate() {
    const Days = ((Date.parse(this.end_dateTarget.value) - Date.parse(this.start_dateTarget.value)) / (60000 * 60 * 24));
    const price = this.priceValue * Days;
    console.log(this.priceValue);
    console.log(this.total_priceTarget)
    console.log(Days);
    console.log(price);
    isNaN(price) ? this.total_priceTarget.innerHTML = "" : this.total_priceTarget.innerHTML = "Total price of this booking - " + price + "€"
  }
}
