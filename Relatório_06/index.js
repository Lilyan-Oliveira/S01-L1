// Classe Animal
class Animal {
    constructor(nome, idade, especie) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
    }

    printInfo() {
        console.log(
            `Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`,
        );
    }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
    constructor(nome, idade, especie, raca) {
        super(nome, idade, especie);
        this.raca = raca;
    }

    printInfo() {
        super.printInfo();
        console.log(`Raça: ${this.raca}`);
    }
}

// Classe Gato que herda de Animal
class Gato extends Animal {
    constructor(nome, idade, especie, cores) {
        super(nome, idade, especie);
        this.cores = cores; // Array de cores
    }

    printInfo() {
        super.printInfo();
        console.log(`Cores: ${this.cores.join(", ")}`);
    }
}

// Criando os objetos e imprimindo as informações
const animal = new Animal("Baleia", 15, "Mamífero");
animal.printInfo();

const cachorro = new Cachorro("Phoebe", 3, "Canino", "Labrador");
cachorro.printInfo();

const gato = new Gato("Garfield", 2, "Felino", ["Preto", "Branco"]);
gato.printInfo();
