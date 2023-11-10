---
title: Espiral de Fibonacci
author: Jurandy Soares
date: 05/nov/2023
---


# Espiral de Fibonacci colorida

Código inspirado nas imagens disponíveis em: [How to construct rectangular figures from the Fibonacci numbers?](https://mathematica.stackexchange.com/questions/183624/how-to-construct-rectangular-figures-from-the-fibonacci-numbers)

## Retângulos de Fibonacci

![Retângulos de Fibonacci](https://i.stack.imgur.com/3GIvj.png)

## Espiral de Fibonacci

![Espiral de Fibonacci](https://i.stack.imgur.com/fyhf0.png)

## Retângulos de Fibonacci com diagonais transformados em espiral de Fibonacci

![Retângulos de Fibonacci com diagonais transformados em espiral de Fibonacci](https://i.stack.imgur.com/SzmQu.gif)

## Explicação do código
Este é um script Python que usa a biblioteca `turtle` para desenhar uma espiral de Fibonacci colorida. Aqui está uma explicação passo a passo do que o código faz:

1. Importa as bibliotecas necessárias: collections e `turtle`.

2. Define o tamanho da janela do `turtle` como 1366x768 pixels.

3. Define duas listas: nome_cores, que contém os nomes das cores em português, e cores, que é um dicionário que mapeia os nomes das cores para suas representações RGB.

4. Solicita ao usuário que insira o número de termos da sequência de Fibonacci que deseja desenhar. O número deve estar entre 3 e 7.

5. Calcula os termos da sequência de Fibonacci e os armazena na lista serie_fib.

6. Define um fator de escala FATOR para o tamanho dos retângulos e espirais que serão desenhados.

7. Inicia o desenho dos retângulos. Para cada termo na sequência de Fibonacci, desenha um retângulo cujo tamanho é proporcional ao termo da sequência. O retângulo é preenchido com a cor correspondente ao termo atual.

8. Depois de desenhar cada retângulo, o código move a tartaruga para o ponto médio do retângulo e escreve o termo da sequência de Fibonacci correspondente.

9. Em seguida, desenha uma espiral de Fibonacci. Para cada termo na sequência de Fibonacci, desenha um quarto de círculo cujo raio é proporcional ao termo da sequência.

10. Por fim, o script aguarda que o usuário clique na tela para encerrar a sessão.
