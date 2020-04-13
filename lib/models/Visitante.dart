class Visitante {
  String nome;
  String telefone;
  String cep;
  String endereco;
  String bairro;
  String complemento;
  String email;

  Visitante(
      this.nome,
      {this.telefone,
      this.cep,
      this.endereco,
      this.bairro,
      this.complemento,
      this.email});

  Visitante.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    telefone = json['telefone'];
    cep = json['cep'];
    endereco = json['endereco'];
    bairro = json['bairro'];
    complemento = json['complemento'];
    email = json['email'];
  }

   Map<String, dynamic> toJson() =>
    {
      'nome': this.nome,
      'telefone': this.telefone,
      'cep': this.cep,
      'endereco': this.endereco,
      'bairro': this.bairro,
      'complemento':this.complemento,
      'email': email,
    };
}