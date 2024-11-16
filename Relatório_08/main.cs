using System;

class Cachorro
{
    // Atributos
    public string Nome { get; set; }
    public int Idade { get; set; }

    // Construtor
    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    // Método para mostrar o nome
    public void MostrarNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    // Método para mostrar a idade
    public virtual void ShowIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade + " anos.");
    }
}

// Classe CachorroGrande herdando de Cachorro
class CachorroGrande : Cachorro
{
    // Atributo privado
    private string tamanho;

    // Construtor
    public CachorroGrande(string nome, int idade, string tamanho) : base(nome, idade)
    {
        this.tamanho = tamanho;
    }

    // Sobrescrevendo o método ShowIdade
    public override void ShowIdade()
    {
        Console.WriteLine("Este é um cachorro grande com idade de: " + Idade + " anos.");
    }
}

// Classe CachorroPequeno herdando de Cachorro
class CachorroPequeno : Cachorro
{
    // Construtor
    public CachorroPequeno(string nome, int idade) : base(nome, idade)
    {
    }

    // Sobrescrevendo o método ShowIdade
    public override void ShowIdade()
    {
        Console.WriteLine("Este é um cachorro pequeno com idade de: " + Idade + " anos.");
    }
}

class Program
{
    static void Main(string[] args)
    {
        // Criando os objetos
        Cachorro cachorro = new Cachorro("Rex", 5);
        CachorroGrande cachorroGrande = new CachorroGrande("Thor", 7, "Grande");
        CachorroPequeno cachorroPequeno = new CachorroPequeno("Bella", 3);

        // Chamando os métodos
        cachorro.MostrarNome();
        cachorro.ShowIdade();

        cachorroGrande.MostrarNome();
        cachorroGrande.ShowIdade();

        cachorroPequeno.MostrarNome();
        cachorroPequeno.ShowIdade();
    }
}
