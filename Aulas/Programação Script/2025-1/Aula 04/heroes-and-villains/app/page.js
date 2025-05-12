'use client'
import Character from "@/app/components/Character";
import gameManager from "@/app/hooks/gameManager";

export default function Home() {
    const {hero, villain, handleHeroAction, heroTurn} = gameManager();
  return (
    <div>
      <h1>Game Heroes and Villains</h1>
      <Character data={hero} isHero onAction={handleHeroAction} isHeroTurn={heroTurn}/>
      <Character data={villain} isHero={false} />
    </div>
  );
}
