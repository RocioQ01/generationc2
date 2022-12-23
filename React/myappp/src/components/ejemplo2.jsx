import { useState } from "react";

function Ejemplo2(){
//useState
const [texto,setTexto]= useState("");
const [valorinput,setValorinput]= useState(null);

    function modificarParrafo(){
        //setTexto("Texto modificado");
        setTexto(valorinput);
    }

    function capturaDatos(event){
        //event.target.value captura cada una de los caracteres ingresados
        console.log(event.target.value);
        //setTexto(event.target.value);
        setValorinput(event.target.value);
    }

    return(
        <>
        <p>Parrafo 1 {texto} </p>
        <input type="text" className="form-control" /*</>value={texto}*/ onChange={capturaDatos} ></input>
        <button onClick={modificarParrafo} className="btn btn-warning">Modificar</button>
    </>
    );
    
}
export default Ejemplo2;