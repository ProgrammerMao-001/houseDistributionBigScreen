// 数组转树结构
function sortArr(a, b) {
  return a.orderNum - b.orderNum;
}

export function arrayToTree(
  list,
  callback = () => {},
  props = { id: "id", pid: "pid", children: "children" }
) {
  list.sort(sortArr);
  const tree = [];
  const map = {};

  // list = cloneObj(list);

  const listLength = list.length;
  for (let i = 0; i < listLength; i++) {
    const node = list[i];
    const nodeId = node[props.id];
    map[nodeId] = node;
    callback(node);
  }

  for (let i = 0; i < listLength; i++) {
    const node = list[i];
    const nodePid = node[props.pid];
    const parentNode = map[nodePid];
    if (parentNode) {
      parentNode[props.children] = parentNode[props.children] || [];
      parentNode[props.children].push(node);
    } else {
      tree.push(node);
    }
  }

  return tree;
}

// 遍历树结构
export function ergodicTree(
  tree,
  callback = () => {},
  props = { id: "id", pid: "pid", children: "children" }
) {
  function _ergodicTree(tree, parentIdPath, depth = 0, parentIndex) {
    const treeLength = tree.length;
    for (let i = 0; i < treeLength; i++) {
      const node = tree[i];
      const _idPath = parentIdPath
        ? [...parentIdPath, node[props.id]]
        : [node[props.id]];
      const _depth = depth + 1;
      const _index = parentIndex ? [...parentIndex, i] : [i];
      node._idPath = _idPath;
      node._depth = _depth;
      node._index = _index;
      callback(node);
      if (node[props.children] && node[props.children] instanceof Array) {
        _ergodicTree(node[props.children], _idPath, _depth, _index);
      }
    }
    return tree;
  }

  _ergodicTree(tree);
  return tree;
}

//获取所有子孙节点 arr为list结构
export function sonsTree(arr, id) {
  const temp = [],
    lev = 0;
  const forFn = function (arr, id, lev) {
    for (let i = 0; i < arr.length; i++) {
      const item = arr[i];
      if (item.pid == id) {
        item.lev = lev;
        temp.push(item);
        forFn(arr, item.id, lev + 1);
      }
    }
  };
  forFn(arr, id, lev);
  return temp;
}

// 获取所有父节点
export function getParent(data2, nodeId2) {
  let arrRes = [];
  if (data2.length == 0) {
    if (!!nodeId2) {
      arrRes.unshift(data2);
    }
    return arrRes;
  }
  const rev = (data, nodeId) => {
    for (let i = 0, length = data.length; i < length; i++) {
      const node = data[i];
      if (node.id == nodeId) {
        arrRes.unshift(node);
        rev(data2, node.pid);
        break;
      } else {
        if (!!node.children) {
          rev(node.children, nodeId);
        }
      }
    }
    return arrRes;
  };
  arrRes = rev(data2, nodeId2);
  const result = [];
  arrRes.forEach((a) => {
    result.push(a.id);
  });
  return result;
}
