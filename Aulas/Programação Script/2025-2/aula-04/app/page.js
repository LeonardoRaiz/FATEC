'use client'
import Image from "next/image";
import styles from "./page.module.css";
import ListaDePosts from "@/components/ListaDePosts";

export default function Home() {
  return (
    <div>
        <h1>Aula 04 - useEffect</h1>
        <ListaDePosts />
    </div>
  );
}
