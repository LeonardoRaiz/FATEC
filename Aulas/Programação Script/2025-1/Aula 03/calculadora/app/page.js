"use client"
import Image from "next/image";
import styles from "./page.module.css";
import Botoes from "@/app/components/Botoes";
import Display from "@/app/components/Display";
import {useState} from "react";

export default function Home() {
    const [displayValue, setDisplayValue] = useState("0");

    return (
    <div className={styles.page}>
      <h1>Calculadora</h1>
        <Display valorDisplay={displayValue}/>
      <Botoes valor={1} onClick={() => setDisplayValue("1")} > 1 </Botoes>
      <Botoes valor={2} onClick={() => console.log("2")} > 1 </Botoes>
    </div>
  );
}

