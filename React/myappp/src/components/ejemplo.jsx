import React,{Component} from "react";

class Ejemplo extends Component{
    //onBlur() y onChange() -> eventos sinteticos
    // STATE
    //Declaracion variable
    constructor(props){
        super(props);
        this.state={ //Recibe un objeto
            encendido: "on"
        }
    }
    //Cambio de variable -- Llama a la funcion
    cambiarEstado = ()=>{
        //Realizar el cambio con "set"
        //Reemplaza todo
        if(this.state.encendido==="on"){
            this.setState=({
                encendido: "off"
            });
        }else{
        this.setSstate({
            encendido: "on"
        });
        }

        alert("click en boton 2");
        this.setState({encendido: "off"});
    }
    //La forma de cambiar una variable es con "setState"
    //Dentro del html, se usa "{}" para entrar a
    //Al trabajar con el state el valor inicial nunca cambia. Es inmutable (Que no puede ser cambiado)
    render(){
        return(
            <>
                <p>Estado de la luz: {this.state.encendido} </p>
                <button onClick={()=> alert("Hola mundo")} type="button" className="btn btn-primary" >Click Me</button>
                <button onClick={ this.cambiarEstado } type="button" className="btn btn-primary" >Click Me 2</button>
            </>
        )
    }
}
export default Ejemplo;