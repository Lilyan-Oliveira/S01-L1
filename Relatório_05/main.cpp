#include <iostream>
#include <string>

using namespace std;

// Classe Pessoa
class Pessoa {
protected:
    string nome;
    int idade;

public:
    Pessoa(string n, int i) : nome(n), idade(i) {}

    void imprimeNome() {
        cout << "O nome é: " << nome << endl;
    }

    virtual void imprimeIdade() {
        cout << "Idade da pessoa: " << idade << " anos." << endl;
    }
};

// Classe Professor herdando de Pessoa
class Professor : public Pessoa {
public:
    Professor(string n, int i) : Pessoa(n, i) {}

    void imprimeIdade() override {
        cout << "Idade do professor: " << idade << " anos." << endl;
    }
};

// Classe Aluno herdando de Pessoa
class Aluno : public Pessoa {
private:
    int matricula;

public:
    Aluno(string n, int i, int m) : Pessoa(n, i), matricula(m) {}

    void imprimeIdade() override {
        cout << "Idade do aluno: " << idade << " anos." << endl;
    }

    void imprimeMatricula() {
        cout << "Matrícula do aluno: " << matricula << endl;
    }
};

int main() {
    // Criando objetos
    Pessoa p("Maria", 40);
    Professor prof("João", 45);
    Aluno aluno("Lilyan", 23, 301);

    // Imprimindo atributos e métodos de cada objeto
    p.imprimeNome();
    p.imprimeIdade();

    cout << endl;

    prof.imprimeNome();
    prof.imprimeIdade();

    cout << endl;

    aluno.imprimeNome();
    aluno.imprimeIdade();
    aluno.imprimeMatricula();

    return 0;
}
