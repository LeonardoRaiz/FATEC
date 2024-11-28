import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class Produto {
    private String nome;
    private double preco;
    
    public Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public double getPreco() {
        return preco;
    }
    public void setPreco(double preco) {
        this.preco = preco;
    }
    @Override
    public String toString() {
        return nome + ": " + preco;
    }
}

public class Main {
    public static void main(String[] args) {
        List<Produto> produtos = Arrays.asList(
                new Produto("Laptop", 2500),
                new Produto("Smartphone", 1200),
                new Produto("Monitor", 800)
        );

        List<String> produtosCaros = produtos.stream()
                .filter(p -> p.getPreco() > 1000)
                .map(Produto::getNome)
                .collect(Collectors.toList());

        System.out.println("Produtos caros: " + produtosCaros);
    }
}