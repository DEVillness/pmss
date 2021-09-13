const position = document.getElementById('position');

function checkPosition() {
    let checkedPositions = "";
    document.querySelectorAll('.position:checked').forEach(checked => {
        checkedPositions = checkedPositions + checked.id + " ";
    });
    position.value = checkedPositions;
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