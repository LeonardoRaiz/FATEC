import {useState} from 'react';

export default function useCalculator() {
    const [displayValue, setDisplayValue] = useState("0");
    const [operator, setOperator] = useState(null);
    const [previousValue, setPreviousValue] = useState(null);
    function handleButtonClick(value) {
        if (!isNaN(value)) {
            console.log("Clicou no numero" + value);
            handleNumber(value)
        } else if (value === ".") {
            console.log("Clicou no decimal");
        } else {
            console.log("Clicou no operador" + value);
        }
    }

    function handleNumber(value) {
        setDisplayValue((prev) =>
            prev === "0" ? String(value) : prev + String(value));
    }
    return {
        displayValue,
        handleButtonClick,
    };
}