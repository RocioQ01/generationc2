import React,{useState, useEffect} from 'react';
import {eliminarAuto, getAllAutos, autoAgregar} from "../services/AutoServices";
//import ArrayAuto from './arrayAuto';
// forma de recivir en una variable un arreglo
const autosInicial=[
    {
        id: 1,
        marca: "",
        color: "",
        nombreUser:"",
        apellidoUser:""
    }
];
const AutoComponent = ()=>{
    const [autos,setAutos] = useState(autosInicial);
    const obtenerAutos= async()=>{
        setAutos(await getAllAutos());
    }
    //useEffect: ejecuta una funcion segun el momento del ciclo de vida
    const eliminaAuto=async(autoId)=>{
        await eliminarAuto(autoId)
        setAutos(await getAllAutos())
    }
    useEffect(
        ()=>{obtenerAutos()},[]
    );
    const autoAgregar = async (auto) => {
        await guardarAuto(auto)
        setAutos(await getAllAutos())
    }
    return (
        <>
            <div>
                    <p>Respuesta de la api: </p>
                    <table className='table'>
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Marca</th>
                                <th>Color</th>
                                <th>Propietario</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                            autos.map(au=>(
                            <tr key={au.id}>
                                <td>{au.id}</td>
                                <td>{au.marca}</td>
                                <td>{au.color}</td>
                                <td>{au.nombreUser} {au.apellidoUser}</td>
                                <td><button className="btn btn-sm btn-outline-danger" onClick={() => eliminaAuto(au.id)}>Eliminar</button></td>
                            </tr>
                            ))
                            }
                        </tbody>
                    </table>
                </div>
        </>
    );
}
export default AutoComponent;