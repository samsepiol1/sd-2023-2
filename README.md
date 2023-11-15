# sd-2023-2
Sistemas distribuídos 2023.2


## Aula de 10/10/2023

Elixir:
- Linguagem de programação
- Tem 4 executáveis principais:
  - `elixirc`: Compilador (Gera `.beam` a partir de arquivos `.ex`);
  - `elixir`: Interpretador (Para shebang ou executar arquivos `.exs`);
  - `iex`: Interpretador interativo;
  - `mix`: Ferramenta para gerenciamento de projetos.

- Criação de projetos com elixir:

  - `elixir -v`
  - Caso `elixir` não esteja instalado, executar:

    - `sudo apt update`
    - `sudo apt install -y elixir`

  - `mix new calculadora`
  - `cd calculadora`
  - `code lib/calculadora.ex`
  - Edite o código da calculadora
  - `iex -S mix`
  - Para sair do `iex`, pressione Ctrl+C duas vezes
