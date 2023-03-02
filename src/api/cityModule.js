// 区县模块 接口
import {get, post} from "../utils/request";

export const getCityList = (obj) => get("api/getCityList", obj);
