//axios
import axios from 'axios';

//establer la ruta por default
const rutaBase = "http://localhost:8085/api2";

const usuarioId = 1;

// funcion de llamado
const getAllAutos = async()=>{
    const respuesta = await axios.get(rutaBase+"/autos/getall");
    console.log(respuesta.data);
    return respuesta.data;
}

const getAuto = async(id)=>{
    const respuesta = await axios.get(rutaBase+"/obtener/auto/"+id);
    console.log(respuesta.data);
    return respuesta.data;
}

const eliminarAuto = async(id)=>{
    //eliminarAuto(1)
    //peticion con valores en path
    const respuesta = await axios.post(rutaBase+"/eliminar/auto?id="+id);
    //axios.post(http://localhost:9080/api/eliminar/auto/1)
    return respuesta.data;
}

const guardarAuto = async(auto)=>{
    //peticion con valor desde body
    const res = await axios.post(rutaBase+"/guardar/auto?usuarioId=" + usuarioId, auto);
    return res.data;
}

export {getAllAutos,getAuto,eliminarAuto,guardarAuto}