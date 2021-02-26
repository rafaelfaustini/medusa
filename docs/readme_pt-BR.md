<a><h1 align="center">Medusa</h1></a>

  <p align="center">Medusa é um sanitiser para ASP Clássico</p> 
  <p align="center">(Essa não é uma solução sozinha para XSS/SQL Injection, é recomendado que seja usado como uma camada de segurança quando necessário (Os filtros são agressivos e podem quebrar o conteúdo). Eu recomendo o uso de stored procedures e/ou prepared statements para ajudar na prevenção de SQL INJECTION)</p>

  <p align="center">
     <a href="https://github.com/rafaelfaustini/rafaelfaustini.com.br/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/rafaelfaustini/medusa?color=f44336" />
    </a>
     <a href="https://github.com/rafaelfaustini/rafaelfaustini.com.br/pulls">
      <img alt="Issues" src="https://img.shields.io/github/issues-pr/rafaelfaustini/medusa?color=f44336" />
    </a>
  </p>
  <p align="center">
     ·
    <a href="https://github.com/rafaelfaustini/medusa/issues/new">Reportar um bug</a>
     ·
  </p>
  <p align="center">
    ·
    <a href="/docs/readme_pt-BR.md">Português Brasileiro</a>
    .
  </p>

## Uso

1. Importe Medusa para o seu projeto ao colocar no topo do documento:

```asp
<!--#include file="Medusa.asp"-->
```

2. Instancie a classe do Medusa:

```asp
Set medusa = new Medusa
```

3. Métodos:

```asp
 medusa.filter(content, flag)
```

O método filtra um texto contra SQL Injection/XSS

| Parameter | Description                                                       | Expected               |
| --------- | ----------------------------------------------------------------- | ---------------------- |
| content   | O texto a ser filtrado                                            | Qualquer string        |
| flag      | Define se o filtro a ser executado será para XSS ou SQL Injection | 0 para XSS, 1 para SQL |

## Contribua

É fato que segurança necessita de atualizações frequentes para novas técnicas, sinta-se livre para escrever issues e fazer pull requests.
