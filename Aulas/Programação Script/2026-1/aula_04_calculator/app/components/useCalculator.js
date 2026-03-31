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
            handleDecimal()
        } else {
            handleOperator(value)
        }
    }

    function handleNumber(value) {
        setDisplayValue((prev) =>
            prev === "0" ? String(value) : prev + String(value));
    }
    function handleDecimal() {
        setDisplayValue((prev) => {
            if(!prev.includes(".")){
                return prev + "."
            }
            return prev;
        });
    }

    function handleOperator(op) {
        if(op === "AC"){
            clear();
        } else if (op === "+/-"){
            setDisplayValue((prev) =>
                String(-1 * parseFloat(prev)));
        } else if (op === "%"){
            setDisplayValue((prev) =>
                String(parseFloat(prev) / 100));
        } else if (op === "="){
            if(previousValue !== null && op){
                const result = calculate(previousValue,
                    displayValue, operator);
                setDisplayValue(String(result));
                setPreviousValue(null);
                setOperator(null);
            }
        } else {
            //TODO
            //PODE TER ALGO!?
            setPreviousValue(displayValue);
            setOperator(op)
            setDisplayValue("0");
        }
    }
    function calculate(previousValue, displayValue, operator) {
        const num1 = parseFloat(previousValue);
        const num2 = parseFloat(displayValue);

        if (operator === "+") return num1 + num2;
        if (operator === "-") return num1 - num2;
        if (operator === "*") return num1 * num2;
        if (operator === "/") return num1 / num2;

        return num2;
    }
    return {
        displayValue,
        handleButtonClick,
    };
}