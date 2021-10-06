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
        const responseJson = JSON.parse(responseText);
        const table = window.document.querySelector('main > section > div.result > table > tbody');
        responseJson.forEach(rowData => {
            let tr = createTableRow(rowData);
            table.append(tr);
        });
    }, (status) => {
        alert(`서버와의 통신에서 [${status}] 오류가 발생하였습니다.`);
    });
}

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