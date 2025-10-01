// app/layout.js
import './globals.css';

export const metadata = {
    title: 'Pokédex',
    description: 'Uma Pokédex construída com Next.js',
};

export default function RootLayout({ children }) {
    return (
        <html lang="pt-BR">
        <body>{children}</body>
        </html>
    );
}