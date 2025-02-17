export default function BlogPage() {
    const subtitulo = "Estamos aprendendo NEXTJS"
    const valor = <h3>{3 * 3}</h3>
    return (
        <div>
            <h1>Blog Page</h1>
            <h2>{subtitulo}</h2>
            {valor}
        </div>
    )
}