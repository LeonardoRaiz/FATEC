import { useState } from "react";

export default function gameManager()
{
    const initialHero = { life: 100, name: "Jaspion"}
    const initialVillain = {life : 100, name: "Satan Goss"}

    const [hero , setHero] = useState(initialHero);
    const [villain, setVillain] = useState(initialVillain);

    const [isHeroTurn, setIsHeroTurn] = useState(true);

    const modifyLife = (target, amount) => {
        const setter = target === "hero" ? setHero : setVillain;
        setter((prev) => ({ ...prev,  life: Math.max(0, prev.life + amount) }));
    }

    const actions = {
        attack: () => {
            modifyLife("villain", -10);
        },
        defense: () => {},
        usePotion: () => {},
        flee: () => {}
    }

    const handleHeroAction = (action) => {
        if (!isHeroTurn) return;
        actions[action]?.();
        setIsHeroTurn(false);

        //turno do vilão
        setTimeout(() => {
            //logica
            setIsHeroTurn(true);
        }, 2000)
    }
    return {
        hero, villain, handleHeroAction, isHeroTurn
    };
}