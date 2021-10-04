const position = document.getElementById('position');
const place = document.getElementById('place');
const rank = document.getElementById('rank');
const tag = document.getElementById('tag');
const searchForm = document.querySelector('main > section > form[method="post"]');

function submitForm() {
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        searchForm.submit();
    }
}

function checkPosition() {
    let checkedPositions = "";
    document.querySelectorAll('main > section > form > table.tags > tbody > tr.position > td > span > input:checked').forEach(checked => {
        checkedPositions = checkedPositions + checked.id + " ";
    });
    position.value = checkedPositions;
    countCheck();
}

function checkPlace() {
    let checkedPlaces = "";
    document.querySelectorAll('main > section > form > table.tags > tbody > tr.place > td > span > input:checked').forEach(checked => {
        checkedPlaces = checkedPlaces + checked.id + " ";
    });
    place.value = checkedPlaces;
    countCheck();
}

function checkRank() {
    let checkedRank = "";
    document.querySelectorAll('main > section > form > table.tags > tbody > tr.rank > td > span > input:checked').forEach(checked => {
        checkedRank = checkedRank + checked.id + " ";
    });
    rank.value = checkedRank;
    countCheck();
}

function checkTag() {
    let checkedTag = "";
    document.querySelectorAll('main > section > form > table.tags > tbody > tr.tags > td > span > input:checked').forEach(checked => {
        checkedTag = checkedTag + checked.id + " ";
    });
    tag.value = checkedTag;
    countCheck();
}

function resetChecked() {
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        searchForm.reset();
        position.value = "";
        place.value = "";
        rank.value = "";
        tag.value = "";
        countCheck();
    }
}

function countCheck() {
    let total = document.querySelectorAll('input:checked').length;

    if (total >= 5) {
        document.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = true;
        });
    }

    if (total < 5) {
        document.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = false;
        });
    }
}

const rows = document.querySelectorAll('main > section > div.result > table > tbody > tr');
rows.forEach(row => {
    let operators = row.querySelectorAll('td.operators > span');
    let tags = row.querySelectorAll('td.tags > span');
    let minRank = 6;
    operators.forEach(operator => {
        if (Number(operator.getAttribute('rank')) < minRank && Number(operator.getAttribute('rank')) !== 1) {
            minRank = Number(operator.getAttribute('rank'));
        }
    })
    if (minRank === 2 || minRank === 3) {
        minRank = Number(operators[operators.length - 1].getAttribute('rank'))
    }
    switch (minRank) {
        case 6:
            tags.forEach(tag => {
                tag.style.backgroundColor = "#ff6600";
                tag.style.color = "#000000";
            })
            break;
        case 5:
            tags.forEach(tag => {
                tag.style.backgroundColor = "#ffae00";
                tag.style.color = "#000000";
            })
            break;
        case 4:
            tags.forEach(tag => {
                tag.style.backgroundColor = "#dbaedb";
                tag.style.color = "#000000";
            })
            break;
        case 1:
            tags.forEach(tag => {
                tag.style.backgroundColor = "#ffffff";
                tag.style.color = "#000000";
            })
            break;
    }
    if (Number(operators[0].getAttribute('rank')) === 1) {
        tags.forEach(tag => {
            tag.style.backgroundColor = "#000000";
            tag.style.color = "#ffffff";
        })
    }
});