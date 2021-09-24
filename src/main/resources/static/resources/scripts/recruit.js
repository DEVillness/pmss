const position = document.getElementById('position');
const place = document.getElementById('place');
const rank = document.getElementById('rank');
const tag = document.getElementById('tag');
const searchForm = document.querySelector('main > form[method="post"]');

function submitForm() {
    searchForm.submit();
}

function checkPosition() {
    let checkedPositions = "";
    document.querySelectorAll('.position:checked').forEach(checked => {
        checkedPositions = checkedPositions + checked.id + " ";
    });
    position.value = checkedPositions;
    countCheck();
}

function checkPlace() {
    let checkedPlaces = "";
    document.querySelectorAll('.place:checked').forEach(checked => {
        checkedPlaces = checkedPlaces + checked.id + " ";
    });
    place.value = checkedPlaces;
    countCheck();
}

function checkRank() {
    let checkedRank = "";
    document.querySelectorAll('.rank:checked').forEach(checked => {
        checkedRank = checkedRank + checked.id + " ";
    });
    rank.value = checkedRank;
    countCheck();
}

function checkTag() {
    let checkedTag = "";
    document.querySelectorAll('.tag:checked').forEach(checked => {
        checkedTag = checkedTag + checked.id + " ";
    });
    tag.value = checkedTag;
    countCheck();
}

function resetChecked() {
    document.querySelectorAll('input:checked').forEach(check => {
        check.checked = false;
    });
    position.value = "";
    place.value = "";
    rank.value = "";
    tag.value = "";
    countCheck();
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