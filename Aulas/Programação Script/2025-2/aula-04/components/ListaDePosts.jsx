'use client'

import {useEffect, useState} from "react";

export default function ListaDePosts() {
    const [posts, setPosts] = useState([])
    const [loading, setLoading] = useState(true)
    const [error, setError] = useState(null)

    useEffect(() => {
        const fetchPosts = async () => {
            try {
                const response =
                    await fetch("https://pokeapi.co/api/v2/pokemon/")
                if (!response.ok) { // diferente de 200
                    throw new Error("Erro ao buscar posts")
                }
                const data = await response.json()
                setPosts(data.results)
            } catch (error) {
                setError(error.message)
            } finally {
                setLoading(false)
            }
        }
        fetchPosts()
    }, [])
    console.log(posts)
    if (loading) {
        return <h3 style={styles.loading}>Carregando...</h3>
    }
    if (error) {
        return <h3 style={styles.error}>{error}</h3>
    }
    return (
        <div style={styles.container}>
            <h2>Lista de Posts</h2>
            <ul>
                {posts.map(pokemon => (
                    <li key={pokemon.name} style={styles.listItem}>
                        <h3>{pokemon.name}</h3>
                        <p style={styles.body}>{pokemon.url}</p>
                    </li>
                ))}
            </ul>
        </div>
    )
}

const styles = {
    container: {
        border: "1px solid black",
        padding: "10px",
        background: "#a4a4a4",
        display: "grid",
        gridTemplateColumns: "repeat(3, 3fr)",
        gap: "10px",
        margin: "10px"
    },
    listItem: {
        background: "#1c1c1c", padding: "5px", width: "300px",
        height: "100px", border: "none", borderRadius: "5px", margin: "5px",
    },
    body: {color: "#74abe3"},
    loading: {color: "#57d71c"},
    error: {color: "#e81616"}
}