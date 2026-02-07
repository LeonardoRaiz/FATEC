import time

def processamento_pesado():
    print("🐍 Python: Iniciando contagem...")
    start = time.time()

    soma = 0
    for i in range(100_000_000):
        soma += i

    end = time.time()
    print(f"Resultado: {soma}")
    print(f"Tempo: {end - start:.4f} segundos")

if __name__ == "__main__":
    processamento_pesado()