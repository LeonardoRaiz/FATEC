import {Component} from "react";

export default class Contador extends Component{

    state = {
        numero: this.props.valorInicial ?? 0
    }

    incremento() {
        this.setState({
            numero: this.state.numero + 1
        })
    }

    decremento = () => {
        this.setState({
            numero: this.state.numero - 1
        })
    }

    render() {
        return (
            <div>
                <h1>Contador</h1>
                <h2>{this.props.valorInicial}</h2>
                <h2>{this.state.numero}</h2>
                <button onClick={this.incremento.bind(this)}>+</button>
                <button onClick={this.decremento}>-</button>
            </div>
        )
    }
}