import React,{Component} from 'react';
import Form from 'react-bootstrap/Form';

class Body extends Component{
    render(){
        return(
            <Form>
                <Form.Label>Nombre:</Form.Label>
                <Form.Control type="Nombre" placeholder="Ingrese nombre" />
            
                <Form.Label>Apellido:</Form.Label>
                <Form.Control type="Apellido" placeholder="Ingrese apellido" />

                <Form.Label>Edad:</Form.Label>
                <Form.Control type="Edad" placeholder="Ingrese edad" />
            </Form>
            );
        }
    }

    export default Body;