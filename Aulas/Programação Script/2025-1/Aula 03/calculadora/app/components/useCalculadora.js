import {useState} from "react";

export default function useCalculadora() {
    const [displayValue, setDisplayValue] = useState("0");
    const [operator, setOperator] = useState(null);
    const [previousValue, setPreviousValue] = useState(null);

    function handleButtonClick(value) {
        if (!isNaN(value) && value !== ".00") {
            handleNumber(value)
        } else if (value === ".") {
            handleDecimal();
        } else if (value === ".00") {
            handleDoubleZero();
        } else {
            handleOperator(value);
        }
    }

    function handleNumber(value) {
        setDisplayValue((prev) => prev === "0" ? String(value) : prev + String(value));
    }

    function handleDecimal() {
        setDisplayValue((prev) => {
                if (prev.includes(".")) {
                    return prev
                } else {
                    return prev + "."
                }
            }
        )
    }

    function handleDoubleZero() {
        setDisplayValue((prev) => {
            if (!prev.includes(".")) {
                return prev === "0" ? "0.00" : prev + ".00"
            } else {
                return prev
            }
        })
    }

    function handleOperator(op) {
        if (op === "AC") {
            clear();
        } else if (op === "+/-") {
            setDisplayValue((prev) => String(-1 * parseFloat(prev)));
        } else if (op === "%") {
            setDisplayValue((prev) => String(parseFloat(prev) / 100));
        } else if (op === "=") {
            if (previousValue !== null && operator) {
                const result = calculate(previousValue, displayValue, operator);
                setDisplayValue(String(result));
                setPreviousValue(null);
                setOperator(null);
            }
        } else {
            if (previousValue !== null && operator) {
                const result = calculate(previousValue, displayValue, operator);
                setDisplayValue(String(result));
                setPreviousValue(result);
            } else {
                setPreviousValue(parseFloat(displayValue));
            }
            setOperator(op);
            setDisplayValue("0");
        }
    }

    function calculate(previousValue, displayValue, operator) {
        const num1 = parseFloat(previousValue);
        const num2 = parseFloat(displayValue);

        if (operator === "+") return num1 + num2;
        if (operator === "-") return num1 - num2;
        if (operator === "/") return num1 / num2;
        if (operator === "*") return num1 * num2;
    }

    function clear() {
        setDisplayValue("0");
        setOperator(null);
        setPreviousValue(null);
    }

    return {
        displayValue, //get Valor do display
        handleButtonClick, // gerenciar o click do botão
    }
}