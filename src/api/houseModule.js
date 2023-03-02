// 房屋模块 接口
import {get, post} from "../utils/request";

export const getHouseTableByCity = (obj) => get("api/getHouseTableByCity", obj);
export const getHouseDetail = (obj) => get("api/getHouseDetail", obj);
