/**
 * 将数据转成 dataV 库中table所需要的数据格式
 * */
export function changeTableData1(interfaceData) {
    let resultData = [];
    interfaceData.forEach((item, index) => {
        let arr = [];
        arr[0] = item.id;
        arr[1] = `<span class="box3-class"> ${item.housename}</span>`;
        arr[2] = item.address;
        arr[3] = item.houseprize;
        arr[4] = item.sellname;
        resultData[index] = arr
    })
    return resultData;
}

