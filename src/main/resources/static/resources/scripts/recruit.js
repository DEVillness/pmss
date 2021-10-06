// collect selected tags
const position = document.getElementById('position');
const place = document.getElementById('place');
const rank = document.getElementById('rank');
const tag = document.getElementById('tag');

document.querySelectorAll('body > main > section > form > table.tags > tbody > tr.position > td > span > input').forEach(po => {
    po.onchange = () => {
        let checkedPositions = "";
        document.querySelectorAll('main > section > form > table.tags > tbody > tr.position > td > span > input:checked').forEach(checked => {
            checkedPositions = checkedPositions + checked.id + " ";
        });
        position.value = checkedPositions;
        countCheck();
    };
});

document.querySelectorAll('body > main > section > form > table.tags > tbody > tr.place > td > span > input').forEach(pl => {
    pl.onchange = () => {
        let checkedPlaces = "";
        document.querySelectorAll('main > section > form > table.tags > tbody > tr.place > td > span > input:checked').forEach(checked => {
            checkedPlaces = checkedPlaces + checked.id + " ";
        });
        place.value = checkedPlaces;
        countCheck();
    };
});

document.querySelectorAll('body > main > section > form > table.tags > tbody > tr.rank > td > span > input').forEach(ra => {
    ra.onchange = () => {
        let checkedRank = "";
        document.querySelectorAll('main > section > form > table.tags > tbody > tr.rank > td > span > input:checked').forEach(checked => {
            checkedRank = checkedRank + checked.id + " ";
        });
        rank.value = checkedRank;
        countCheck();
    };
});

document.querySelectorAll('body > main > section > form > table.tags > tbody > tr.tags > td > span > input').forEach(ta => {
    ta.onchange = () => {
        let checkedTag = "";
        document.querySelectorAll('main > section > form > table.tags > tbody > tr.tags > td > span > input:checked').forEach(checked => {
            checkedTag = checkedTag + checked.id + " ";
        });
        tag.value = checkedTag;
        countCheck();
    };
});

// reset selected tags
const searchForm = document.querySelector('main > section > form[method="post"]');
document.querySelector('body > main > section > form > table.tags > tbody > tr.buttons > td > div.reset').onclick = () => {
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        searchForm.reset();
        position.value = "";
        place.value = "";
        rank.value = "";
        tag.value = "";
        countCheck();
    }
};

// search with selected tags
document.querySelector('body > main > section > form > table.tags > tbody > tr.buttons > td > div.search').onclick = () => {
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        // searchForm.submit();
        requestAjax();
    }
};

// count selected tags and control checkboxes
const MAX_SELECTION = 5;
function countCheck() {
    let total = document.querySelectorAll('input:checked').length;

    if (total >= MAX_SELECTION) {
        document.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = true;
        });
    }

    if (total < MAX_SELECTION) {
        document.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = false;
        });
    }
}

// highlight tags with preferred result
document.querySelectorAll('main > section > div.result > table > tbody > tr').forEach(row => {
    let operators = row.querySelectorAll(':scope > td.operators > span');
    let tags = row.querySelectorAll(':scope > td.tags > span');
    let minRank = 6;
    operators.forEach(operator => {
        if (Number(operator.getAttribute('rank')) < minRank && Number(operator.getAttribute('rank')) !== 1) {
            minRank = Number(operator.getAttribute('rank'));
        }
    });
    if (minRank === 2 || minRank === 3) {
        minRank = Number(operators[operators.length - 1].getAttribute('rank'))
    }
    switch (minRank) {
        case 6:
            tags.forEach(tag => {
                tag.style.backgroundColor = '#ff6600';
                tag.style.color = '#000000';
            })
            break;
        case 5:
            tags.forEach(tag => {
                tag.style.backgroundColor = '#ffae00';
                tag.style.color = '#000000';
            })
            break;
        case 4:
            tags.forEach(tag => {
                tag.style.backgroundColor = '#dbaedb';
                tag.style.color = '#000000';
            })
            break;
        case 1:
            tags.forEach(tag => {
                tag.style.backgroundColor = '#ffffff';
                tag.style.color = '#000000';
            })
            break;
    }
    if (Number(operators[0].getAttribute('rank')) === 1) {
        tags.forEach(tag => {
            tag.style.backgroundColor = '#000000';
            tag.style.color = '#ffffff';
        })
    }
});