/**
 * 将数据转成 dataV 库中table所需要的数据格式
 * */
export function changeTableData(interfaceData) {
    let resultData = [];
    interfaceData.forEach((item, index) => {
        let arr = [];
        arr[0] = `<span class="box3-class" id="'?id='${item.id}'" style="${item.index === 1 ? 'color: red;' : item.index === 2 ? 'color: yellow' : item.index === 3 ? 'color: blue' : ''}"> ${item.index}</span>`;
        arr[1] = item.sellname;
        arr[2] = item.sellnum;
        resultData[index] = arr
    })
    return resultData;
}

