// 标题模块 接口
import {get, post} from "../utils/request";

export const getTitleList = (obj) => get("api/getTitleList", obj);
export const updateTitleList = (body) => post("api/updateTitleList", body);
