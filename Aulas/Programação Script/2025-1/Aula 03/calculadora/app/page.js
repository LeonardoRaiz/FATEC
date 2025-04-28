"use client"

import styles from "./page.module.css";
import Botoes from "@/app/components/Botoes";
import Display from "@/app/components/Display";
import useCalculadora from "@/app/components/useCalculadora";

export default function Home() {
    const {displayValue, handleButtonClick} = useCalculadora()
    return (
    <div className={styles.page}>
      <h1>Calculadora</h1>
        <Display valorDisplay={displayValue}/>
      <Botoes valor={1} onClick={() => handleButtonClick("1")} />
      <Botoes valor={2} onClick={() => handleButtonClick("2")} />
      <Botoes valor={"+"} onClick={() => handleButtonClick("+")} />
      <Botoes valor={"."} onClick={() => handleButtonClick(".")} />
      <Botoes valor={".00"} onClick={() => handleButtonClick(".00")}/>
      <Botoes valor={"="} onClick={() => handleButtonClick("=")} />
    </div>
  );
}

