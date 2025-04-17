import {useState} from "react";

export default function useCalculadora() {
    const [displayValue, setDisplayValue] = useState("0");
    //const [operator, setOperator] = useState(null);
    //const [previousValue, setPreviousValue] = useState(null);

    function handleButtonClick(value) {
        if (!isNaN(value)){
            handleNumber(value)
        } else if (value == "."){
            //handleDecimal();
        } else if (value == ".00"){
            //handleDoubleZero();
        } else {
            //handleOperator(value);
        }
    }

    function handleNumber(value){
        setDisplayValue((prev) => prev === "0" ? String(value) : prev + String(value));
    }

    return {
        displayValue, //get Valor do display
        handleButtonClick, // gerenciar o click do botão
    }
}