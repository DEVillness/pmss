const position = document.getElementById('position');
const place = document.getElementById('place');
const rank = document.getElementById('rank');
const tag = document.getElementById('tag');
const searchTableBody = window.document.querySelector('main > section > form > table.tags > tbody');
const resultTableBody = window.document.querySelector('main > section > div.result > table > tbody');

// collect selected tags
searchTableBody.querySelectorAll(':scope > tr.position > td > span > input').forEach(po => {
    po.onchange = () => {
        let checkedPositions = "";
        searchTableBody.querySelectorAll(':scope > tr.position > td > span > input:checked').forEach(checked => {
            checkedPositions = checkedPositions + checked.id + " ";
        });
        position.value = checkedPositions;
        countCheck();
    };
});

searchTableBody.querySelectorAll(':scope > tr.place > td > span > input').forEach(pl => {
    pl.onchange = () => {
        let checkedPlaces = "";
        searchTableBody.querySelectorAll(':scope > tr.place > td > span > input:checked').forEach(checked => {
            checkedPlaces = checkedPlaces + checked.id + " ";
        });
        place.value = checkedPlaces;
        countCheck();
    };
});

searchTableBody.querySelectorAll(':scope > tr.rank > td > span > input').forEach(ra => {
    ra.onchange = () => {
        let checkedRank = "";
        searchTableBody.querySelectorAll(':scope > tr.rank > td > span > input:checked').forEach(checked => {
            checkedRank = checkedRank + checked.id + " ";
        });
        rank.value = checkedRank;
        countCheck();
    };
});

searchTableBody.querySelectorAll(':scope > tr.tags > td > span > input').forEach(ta => {
    ta.onchange = () => {
        let checkedTag = "";
        searchTableBody.querySelectorAll(':scope > tr.tags > td > span > input:checked').forEach(checked => {
            checkedTag = checkedTag + checked.id + " ";
        });
        tag.value = checkedTag;
        countCheck();
    };
});

// delete current result
function removeResult() {
    resultTableBody.querySelectorAll(':scope > tr').forEach(tr => {
        tr.remove();
    });
}

// reset selected tags
const searchForm = document.querySelector('main > section > form[method="post"]');
searchTableBody.querySelector(':scope > tr.buttons > td > div.reset').addEventListener('click', () => {
    removeResult();
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        searchForm.reset();
        position.value = "";
        place.value = "";
        rank.value = "";
        tag.value = "";
        countCheck();
    }
});

// search with selected tags
searchTableBody.querySelector(':scope > tr.buttons > td > div.search').addEventListener('click', () => {
    removeResult();
    let total = document.querySelectorAll('input:checked').length;
    if (total !== 0) {
        requestAjax();
    }
});

// count selected tags and control checkboxes
const MAX_SELECTION = 5;
function countCheck() {
    let total = searchTableBody.querySelectorAll('input:checked').length;

    if (total >= MAX_SELECTION) {
        searchTableBody.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = true;
        });
    }

    if (total < MAX_SELECTION) {
        searchTableBody.querySelectorAll('input[type="checkbox"]:not(:checked)').forEach(checkbox => {
            checkbox.disabled = false;
        });
    }
}

// highlight tags with preferred result
function highlightTag() {
    let rows = resultTableBody.querySelectorAll(':scope > tr');
    rows.forEach(row => {
        let tags = row.querySelectorAll(':scope > td.tags > span');
        let operators = row.querySelectorAll(':scope > td.operators > span');
        let minRank = 6;
        operators.forEach(operator => {
            if (Number(operator.getAttribute('rank')) < minRank && Number(operator.getAttribute('rank')) !== 1) {
                minRank = Number(operator.getAttribute('rank'));
            }
        });
        if (minRank === 2 || minRank === 3) {
            minRank = Number(operators[operators.length - 1].getAttribute('rank'));
        }
        switch (minRank) {
            case 6:
                tags.forEach(tag => {
                    tag.style.backgroundColor = '#ff6600';
                    tag.style.color = '#000000';
                });
                break;
            case 5:
                tags.forEach(tag => {
                    tag.style.backgroundColor = '#ffae00';
                    tag.style.color = '#000000';
                });
                break;
            case 4:
                tags.forEach(tag => {
                    tag.style.backgroundColor = '#dbaedb';
                    tag.style.color = '#000000';
                });
                break;
            case 1:
                tags.forEach(tag => {
                    tag.style.backgroundColor = '#3f3f3f';
                    tag.style.color = '#ffffff';
                });
                break;
        }
        if (Number(operators[0].getAttribute('rank')) === 1) {
            tags.forEach(tag => {
                tag.style.backgroundColor = '#000000';
                tag.style.color = '#ffffff';
            });
        }
    });
}

// send ajax request
function requestAjax() {
    Ajax.request({
        method: Ajax.METHOD_POST,
        url: '/recruit/calc',
        data: {
            'position': position.value === null ? " " : position.value,
            'place': place.value === null ? " " : place.value,
            'rank': rank.value === null ? " " : rank.value,
            'tag': tag.value === null ? " " : tag.value
        }
    }, (status, responseText) => {
        let responseJson = JSON.parse(responseText);
        responseJson.forEach(rowData => {
            let tr = createTableRow(rowData);
            resultTableBody.append(tr);
        });
        highlightTag();
    }, (status) => {
        alert(`[${status}] 서버와의 통신에서 오류가 발생하였습니다.`);
    });
}

// create result table row from json data
function createTableRow(rowData) {
    let tr = window.document.createElement('tr');
    let tagTd = window.document.createElement('td');
    tagTd.classList.add('tags');
    let operatorsTd = window.document.createElement('td');
    operatorsTd.classList.add('operators');
    rowData['tags'].forEach(tag => {
        let tagSpan = window.document.createElement('span');
        let nobr = window.document.createElement('nobr');
        nobr.innerText = tag;
        tagSpan.append(nobr);
        tagTd.append(tagSpan);
        tagTd.append(" ");
    });
    rowData['operators'].forEach(operator => {
        let operatorSpan = window.document.createElement('span');
        let nobr = window.document.createElement('nobr');
        nobr.innerText = operator['name'];
        operatorSpan.append(nobr);
        operatorSpan.setAttribute('rank', operator['rank']);
        operatorsTd.append(operatorSpan);
        operatorsTd.append(" ");
    });
    tr.append(tagTd);
    tr.append(operatorsTd);
    return tr;
}