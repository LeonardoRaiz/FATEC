/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        remotePatterns: [
            {
                protocol: 'https',
                hostname: 'assets.pokemon.com',
                port: '',
                pathname: '/assets/cms2/img/pokedex/full/**',
            },
        ],
    },
};

// Use 'export default' em vez de 'module.exports'
export default nextConfig;