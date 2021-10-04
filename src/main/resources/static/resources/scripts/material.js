// calculation functions
const d32Input = document.getElementById('d32').querySelectorAll('input');
const bipolarInput = document.getElementById('bipolar').querySelectorAll('input');
const polymerizerInput = document.getElementById('polymerizer').querySelectorAll('input');
const crystalline5Input = document.getElementById('crystalline5').querySelectorAll('input');
const device4Input = document.getElementById('device4').querySelectorAll('input');
const ketone4Input = document.getElementById('ketone4').querySelectorAll('input');
const oriron4Input = document.getElementById('oriron4').querySelectorAll('input');
const ester4Input = document.getElementById('ester4').querySelectorAll('input');
const sugar4Input = document.getElementById('sugar4').querySelectorAll('input');
const orirock4Input = document.getElementById('orirock4').querySelectorAll('input');
const kohl4Input = document.getElementById('kohl4').querySelectorAll('input');
const grindstone4Input = document.getElementById('grindstone4').querySelectorAll('input');
const manganese4Input = document.getElementById('manganese4').querySelectorAll('input');
const rma4Input = document.getElementById('rma4').querySelectorAll('input');
const alloy4Input = document.getElementById('alloy4').querySelectorAll('input');
const gel4Input = document.getElementById('gel4').querySelectorAll('input');
const crystalline4Input = document.getElementById('crystalline4').querySelectorAll('input');
const device3Input = document.getElementById('device3').querySelectorAll('input');
const ketone3Input = document.getElementById('ketone3').querySelectorAll('input');
const oriron3Input = document.getElementById('oriron3').querySelectorAll('input');
const ester3Input = document.getElementById('ester3').querySelectorAll('input');
const sugar3Input = document.getElementById('sugar3').querySelectorAll('input');
const orirock3Input = document.getElementById('orirock3').querySelectorAll('input');
const kohl3Input = document.getElementById('kohl3').querySelectorAll('input');
const grindstone3Input = document.getElementById('grindstone3').querySelectorAll('input');
const manganese3Input = document.getElementById('manganese3').querySelectorAll('input');
const rma3Input = document.getElementById('rma3').querySelectorAll('input');
const alloy3Input = document.getElementById('alloy3').querySelectorAll('input');
const gel3Input = document.getElementById('gel3').querySelectorAll('input');
const crystalline3Input = document.getElementById('crystalline3').querySelectorAll('input');
const device2Input = document.getElementById('device2').querySelectorAll('input');
const ketone2Input = document.getElementById('ketone2').querySelectorAll('input');
const oriron2Input = document.getElementById('oriron2').querySelectorAll('input');
const ester2Input = document.getElementById('ester2').querySelectorAll('input');
const sugar2Input = document.getElementById('sugar2').querySelectorAll('input');
const orirock2Input = document.getElementById('orirock2').querySelectorAll('input');
const device1Input = document.getElementById('device1').querySelectorAll('input');
const ketone1Input = document.getElementById('ketone1').querySelectorAll('input');
const oriron1Input = document.getElementById('oriron1').querySelectorAll('input');
const ester1Input = document.getElementById('ester1').querySelectorAll('input');
const sugar1Input = document.getElementById('sugar1').querySelectorAll('input');
const orirock1Input = document.getElementById('orirock1').querySelectorAll('input');

document.querySelectorAll('main > section.calc > form > section.rank > div.commodity > div > input').forEach(i => {
    i.onchange = refresh;
});

function refresh() {
    d32Input[2].value = positive(Number(d32Input[0].value) - Number(d32Input[1].value));
    bipolarInput[2].value = positive(Number(bipolarInput[0].value) - Number(bipolarInput[1].value));
    polymerizerInput[2].value = positive(Number(polymerizerInput[0].value) - Number(polymerizerInput[1].value));
    crystalline5Input[2].value = positive(Number(crystalline5Input[0].value) - Number(crystalline5Input[1].value));
    device4Input[2].value = positive(Number(device4Input[0].value) - Number(device4Input[1].value) + Number(bipolarInput[2].value));
    ketone4Input[2].value = positive(Number(ketone4Input[0].value) - Number(ketone4Input[1].value) + Number(polymerizerInput[2].value));
    oriron4Input[2].value = positive(Number(oriron4Input[0].value) - Number(oriron4Input[1].value) + Number(polymerizerInput[2].value));
    ester4Input[2].value = positive(Number(ester4Input[0].value) - Number(ester4Input[1].value));
    sugar4Input[2].value = positive(Number(sugar4Input[0].value) - Number(sugar4Input[1].value));
    orirock4Input[2].value = positive(Number(orirock4Input[0].value) - Number(orirock4Input[1].value) + Number(polymerizerInput[2].value));
    kohl4Input[2].value = positive(Number(kohl4Input[0].value) - Number(kohl4Input[1].value) + Number(bipolarInput[2].value) * 2);
    grindstone4Input[2].value = positive(Number(grindstone4Input[0].value) - Number(grindstone4Input[1].value) + Number(d32Input[2].value));
    manganese4Input[2].value = positive(Number(manganese4Input[0].value) - Number(manganese4Input[1].value) + Number(d32Input[2].value));
    rma4Input[2].value = positive(Number(rma4Input[0].value) - Number(rma4Input[1].value) + Number(d32Input[2].value));
    alloy4Input[2].value = positive(Number(alloy4Input[0].value) - Number(alloy4Input[1].value) + Number(crystalline5Input[2].value));
    gel4Input[2].value = positive(Number(gel4Input[0].value) - Number(gel4Input[1].value) + Number(crystalline5Input[2].value) * 2);
    crystalline4Input[2].value = positive(Number(crystalline4Input[0].value) - Number(crystalline4Input[1].value) + Number(crystalline5Input[2].value));
    device3Input[2].value = positive(Number(device3Input[0].value) - Number(device3Input[1].value) + Number(device4Input[2].value) + Number(oriron4Input[2].value) + Number(grindstone4Input[2].value) + Number(alloy4Input[2].value));
    ketone3Input[2].value = positive(Number(ketone3Input[0].value) - Number(ketone3Input[1].value) + Number(ketone4Input[2].value) * 2 + Number(ester4Input[2].value) + Number(rma4Input[2].value));
    oriron3Input[2].value = positive(Number(oriron3Input[0].value) - Number(oriron3Input[1].value) + Number(oriron4Input[2].value) * 2 + Number(sugar4Input[2].value) + Number(grindstone4Input[2].value) + Number(gel4Input[2].value));
    ester3Input[2].value = positive(Number(ester3Input[0].value) - Number(ester3Input[1].value) + Number(oriron4Input[2].value) + Number(ester4Input[2].value) * 2 + Number(manganese4Input[2].value));
    sugar3Input[2].value = positive(Number(sugar3Input[0].value) - Number(sugar3Input[1].value) + Number(ketone4Input[2].value) + Number(sugar4Input[2].value) * 2 + Number(kohl4Input[2].value));
    orirock3Input[2].value = positive(Number(orirock3Input[0].value) - Number(orirock3Input[1].value) + Number(device4Input[2].value) * 2 + Number(orirock4Input[2].value) * 4 + Number(rma4Input[2].value) * 2);
    kohl3Input[2].value = positive(Number(kohl3Input[0].value) - Number(kohl3Input[1].value) + Number(ester4Input[2].value) + Number(kohl4Input[2].value) + Number(manganese4Input[2].value));
    grindstone3Input[2].value = positive(Number(grindstone3Input[0].value) - Number(grindstone3Input[1].value) + Number(device4Input[2].value) + Number(grindstone4Input[2].value) + Number(alloy4Input[2].value));
    manganese3Input[2].value = positive(Number(manganese3Input[0].value) - Number(manganese3Input[1].value) + Number(ketone4Input[2].value) + Number(sugar4Input[2].value) + Number(manganese4Input[2].value) * 2);
    rma3Input[2].value = positive(Number(rma3Input[0].value) - Number(rma3Input[1].value) + Number(kohl4Input[2].value) + Number(rma4Input[2].value));
    alloy3Input[2].value = positive(Number(alloy3Input[0].value) - Number(alloy3Input[1].value) + Number(alloy4Input[2].value) + Number(gel4Input[2].value) + Number(crystalline4Input[2].value));
    gel3Input[2].value = positive(Number(gel3Input[0].value) - Number(gel3Input[1].value) + Number(gel4Input[2].value) + Number(crystalline4Input[2].value));
    crystalline3Input[2].value = positive(Number(crystalline3Input[0].value) - Number(crystalline3Input[1].value) + Number(crystalline4Input[2].value) * 2);
    device2Input[2].value = positive(Number(device2Input[0].value) - Number(device2Input[1].value) + Number(device3Input[2].value) * 4);
    ketone2Input[2].value = positive(Number(ketone2Input[0].value) - Number(ketone2Input[1].value) + Number(ketone3Input[2].value) * 4);
    oriron2Input[2].value = positive(Number(oriron2Input[0].value) - Number(oriron2Input[1].value) + Number(oriron3Input[2].value) * 4);
    ester2Input[2].value = positive(Number(ester2Input[0].value) - Number(ester2Input[1].value) + Number(ester3Input[2].value) * 4);
    sugar2Input[2].value = positive(Number(sugar2Input[0].value) - Number(sugar2Input[1].value) + Number(sugar3Input[2].value) * 4);
    orirock2Input[2].value = positive(Number(orirock2Input[0].value) - Number(orirock2Input[1].value) + Number(orirock3Input[2].value) * 5);
    device1Input[2].value = positive(Number(device1Input[0].value) - Number(device1Input[1].value) + Number(device2Input[2].value) * 3);
    ketone1Input[2].value = positive(Number(ketone1Input[0].value) - Number(ketone1Input[1].value) + Number(ketone2Input[2].value) * 3);
    oriron1Input[2].value = positive(Number(oriron1Input[0].value) - Number(oriron1Input[1].value) + Number(oriron2Input[2].value) * 3);
    ester1Input[2].value = positive(Number(ester1Input[0].value) - Number(ester1Input[1].value) + Number(ester2Input[2].value) * 3);
    sugar1Input[2].value = positive(Number(sugar1Input[0].value) - Number(sugar1Input[1].value) + Number(sugar2Input[2].value) * 3);
    orirock1Input[2].value = positive(Number(orirock1Input[0].value) - Number(orirock1Input[1].value) + Number(orirock2Input[2].value) * 3);

    lackStyle();
}

function positive(val) {
    return String(val <= 0 ? 0 : val);
}

// reset calc
const calcForm = document.querySelector('main > section.calc > form');
document.querySelector('main > section.control > div > label.reset').onclick = () => {
    calcForm.reset();
    lackStyle();
}

// set lack input style
function lackStyle() {
    document.querySelectorAll('main > section.calc > form > section.rank > div.commodity > div > input:last-child').forEach(lack => {
        if (Number(lack.value) > 0) {
            lack.style.backgroundColor = '#7f0000';
            lack.style.color = '#ffffff';
        } else {
            lack.style.backgroundColor = '#ffffff';
            lack.style.color = '#6d6d6d';
        }
    });
}

// hide unselected rank
const rankSelector1 = document.getElementById('rankSelector1');
const rankSelector2 = document.getElementById('rankSelector2');
const rankSelector3 = document.getElementById('rankSelector3');
const rankSelector4 = document.getElementById('rankSelector4');
const rankSelector5 = document.getElementById('rankSelector5');
const rank1 = document.getElementById('rank1')
const rank2 = document.getElementById('rank2')
const rank3 = document.getElementById('rank3')
const rank4 = document.getElementById('rank4')
const rank5 = document.getElementById('rank5')

rankSelector5.onchange = () => {
    if (rankSelector5.checked) {
        rank5.removeAttribute('hidden');
    } else {
        rank5.setAttribute('hidden','');
    }
}

rankSelector4.onchange = () => {
    if (rankSelector4.checked) {
        rank4.removeAttribute('hidden');
    } else {
        rank4.setAttribute('hidden','');
    }
}

rankSelector3.onchange = () => {
    if (rankSelector3.checked) {
        rank3.removeAttribute('hidden');
    } else {
        rank3.setAttribute('hidden','');
    }
}

rankSelector2.onchange = () => {
    if (rankSelector2.checked) {
        rank2.removeAttribute('hidden');
    } else {
        rank2.setAttribute('hidden','');
    }
}

rankSelector1.onchange = () => {
    if (rankSelector1.checked) {
        rank1.removeAttribute('hidden');
    } else {
        rank1.setAttribute('hidden','');
    }
}