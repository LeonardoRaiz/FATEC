export default function Character({ data, isHero, onAction, isHeroTurn}) {
    const lifePercent = Math.max(0,
        data.life) + "%"
    return (
        <div className="character">
            <div className="life-bar">
                <div className="life-fill" style={{
                    width:lifePercent,
                }}></div>
                <span className="life-text">{data.life}</span>
            </div>
            <div className="sprite">Desenho Personagem</div>
            <h1>{data.name} - nome do { isHero ? "Herói" : "Vilão" }</h1>
            {isHero && onAction && (
                <div className="actions">
                    <button disabled={!isHeroTurn} onClick={
                        () => onAction("attack")
                    }>Atacar</button>
                    <button disabled={!isHeroTurn} onClick={
                        () => onAction("defense")
                    }>Defender</button>
                    <button disabled={!isHeroTurn} onClick={
                        () => onAction("usePotion")
                    }>Usar Poção</button>
                    <button disabled={!isHeroTurn} onClick={
                        () => onAction("flee")
                    }>Correr</button>
                </div>
            )}
        </div>
    )
}