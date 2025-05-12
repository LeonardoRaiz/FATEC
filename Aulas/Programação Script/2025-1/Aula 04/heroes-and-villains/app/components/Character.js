export default function Character(data, isHero, onAction, isHeroTurn) {
    const lifePercent = Math.max(0, data.life) + '%'
    return (
        <div className="character">

            <div className="life-bar">
                <div className="life-fill" style={{ width : lifePercent }}></div>
                <div className="life-text">{data.life}</div>
            </div>

            <div className="sprite">Desenho personagem</div>
            <h1>{data.name}</h1>
            {
                isHero && onAction && (
                    <div className="actions">
                        <button disabled={!isHeroTurn} onClick={() => onAction("attack")}>Atacar</button>
                        <button disabled={!isHeroTurn} onClick={() => onAction("defense")}>Defesa</button>
                        <button disabled={!isHeroTurn} onClick={() => onAction("usePotion")}>Usar Poção</button>
                        <button disabled={!isHeroTurn} onClick={() => onAction("flee")}>Correr</button>
                    </div>
                )
            }
        </div>
    )
}