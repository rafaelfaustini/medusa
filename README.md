<a><h1 align="center">Medusa</h1></a>

  <p align="center">Medusa is a sanitiser for Classic ASP</p> 
  <p align="center">(This is not a standalone solution for XSS/SQL Injection, it is recommended to be used as only a layer of security when necessary (The filters are aggressive and can distort the content). I recommend the use of stored procedures and/or prepared statements to help the prevention of SQL INJECTION)</p>

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
    <a href="https://github.com/rafaelfaustini/medusa/issues/new">Report a bug</a>
     ·
  </p>
  <p align="center">
    ·
    <a href="/docs/readme_pt-BR.md">Português Brasileiro</a>
    .
  </p>

## Usage

1. Import Medusa to your project by putting in the top of the document:

```asp
<!--#include file="Medusa.asp"-->
```

2. Instantiate Medusa's class:

```asp
Set medusa = new Medusa
```

3. Methods:

```asp
 medusa.filter(content, flag)
```

The methods filters a text agaisn't SQL Injection/XSS

| Parameter | Description                                                           | Expected             |
| --------- | --------------------------------------------------------------------- | -------------------- |
| content   | The text to be filtered                                               | Any string           |
| flag      | Defines if the filter to be executed will be for XSS or SQL Injection | 0 for XSS, 1 for SQL |

## Contribute

It is a fact that security needs fresh updates for new techniques, feel totally free to write issues and make pull requests.
