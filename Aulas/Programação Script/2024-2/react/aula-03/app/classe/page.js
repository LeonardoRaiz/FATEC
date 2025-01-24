"use client"

import {Component} from "react";
import Contador from "@/app/classe/components/Contador";

export default class Page extends Component {
    render() {
        return (
            <div>
                <Contador valorInicial={100}/>
                <Contador />
            </div>
        )
    }
}