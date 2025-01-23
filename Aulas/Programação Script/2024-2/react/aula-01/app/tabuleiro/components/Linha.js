import Subdivisao from "@/app/tabuleiro/components/Subdivisao";
import styles from "../styles/Linha.module.css";


export default function Linha(props) {
    return (
        <div className={styles.linha}>
            <Subdivisao preta = { props.preta } peca = { props.peca && props.preta } jogador2 = {props.jogador2 } />
            <Subdivisao preta = { !props.preta } peca = { props.peca && !props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { props.preta } peca = { props.peca && props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { !props.preta } peca = { props.peca && !props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { props.preta } peca = { props.peca && props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { !props.preta } peca = { props.peca && !props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { props.preta } peca = { props.peca && props.preta } jogador2 = {props.jogador2 }/>
            <Subdivisao preta = { !props.preta } peca = { props.peca && !props.preta } jogador2 = {props.jogador2 }/>
        </div>
    )
}