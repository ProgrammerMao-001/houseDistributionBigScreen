// 用户模块 接口
import {get, post} from "../utils/request";

export const getPicCode = () => get("api/getPicCode", null);
export const login = (body) => post("api/login", body);
export const register = (body) => post("api/register", body);
export const getUserDetail = (obj) => get("api/getUserDetail", obj);
export const deleteUser = (obj) => get("api/deleteUser", obj);
export const updateUser = (body) => post("api/updateUser", body);
