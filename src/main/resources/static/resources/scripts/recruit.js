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