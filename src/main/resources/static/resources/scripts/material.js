const inputs = document.querySelectorAll('main > section.rank > div.commodity > div > input');
const commodities = document.querySelectorAll('div.commodity');

inputs.forEach(i => {
    i.onchange = refresh;
});

function refresh(event) {
    commodities.forEach(commodity => {
        let inputs = commodity.querySelectorAll('input');
        inputs[2].value = positive(Number(inputs[0].value) - Number(inputs[1].value));
    });
}

function positive(val) {
    return String(val < 0 ? 0 : val);
}