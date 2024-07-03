# API de Gerenciamento de Usuários

Esta é uma API simples para gerenciar usuários, desenvolvida usando Spring Boot e Java. Ela oferece operações básicas como criação, leitura, atualização e exclusão (CRUD) de usuários.

## Funcionalidades Principais

- **Listagem de Usuários**: Endpoint para listar todos os usuários cadastrados.
- **Buscar Usuário por ID**: Endpoint para buscar um usuário específico pelo seu ID.
- **Criar Usuário**: Endpoint para criar um novo usuário.
- **Atualizar Usuário**: Endpoint para atualizar as informações de um usuário existente.
- **Excluir Usuário**: Endpoint para excluir um usuário pelo seu ID.

## Endpoint da API

A API está atualmente hospedada em [https://julio-api.onrender.com/user](https://julio-api.onrender.com/user).

### Exemplos de Uso

- **Listar todos os usuários**: `GET https://julio-api.onrender.com/user`

  Retorna uma lista de todos os usuários cadastrados.

- **Buscar usuário por ID**: `GET https://julio-api.onrender.com/user/{id}`

  Retorna os detalhes do usuário correspondente ao ID especificado.

- **Criar um novo usuário**: `POST https://julio-api.onrender.com/user`

  Cria um novo usuário com base nos dados fornecidos no corpo da requisição.

- **Atualizar um usuário existente**: `PUT https://julio-api.onrender.com/user/{id}`

  Atualiza os dados de um usuário específico com base no ID fornecido no caminho da URL.

- **Excluir um usuário**: `DELETE https://julio-api.onrender.com/user/{id}`

  Remove o usuário correspondente ao ID especificado.

### Exemplo de Objeto JSON (UserDTO)

```json
{
  "id": 1,
  "name": "Julio",
  "email": "julio@email.com"
} 
```


## Tecnologias Utilizadas

- **Spring Boot**: Framework para criação de aplicativos Java baseados em Spring.
- **Java**: Linguagem de programação principal.
- **Hibernate/JPA**: Mapeamento objeto-relacional para persistência de dados.
- **ModelMapper**: Ferramenta para mapeamento de objetos DTO para entidades e vice-versa.
- **JUnit 5**: Framework para testes unitários.
- **Docker**: Para facilitar o empacotamento da aplicação em um contêiner.

## Como Executar

Para executar localmente, certifique-se de ter o Java 17 e o Maven instalados. Clone o repositório e execute:

```bash
mvn spring-boot:run
```

Acesse a API em http://localhost:8080/user