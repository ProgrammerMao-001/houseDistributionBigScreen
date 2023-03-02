// 图片模块 接口
import {get, post} from "../utils/request";

export const upload = (body) => post("api/upload", body);
export const getImg = () => get("api/getImg", null);
