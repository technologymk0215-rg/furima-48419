
const priceCalc = () => {
 
  const priceInput = document.getElementById("item-price");
  const addTaxDom = document.getElementById("add-tax-price");
  const profitDom = document.getElementById("profit");

 
  if (!priceInput) return;

  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;

    
    const taxPrice = Math.floor(inputValue * 0.1);
    
   
    const profitPrice = Math.floor(inputValue - taxPrice);

   
    addTaxDom.innerHTML = taxPrice;
    profitDom.innerHTML = profitPrice;
  });
};

window.addEventListener('turbo:load', priceCalc);
window.addEventListener('turbo:render', priceCalc);