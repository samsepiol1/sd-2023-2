---
title: Espiral de Fibonacci
author: Jurandy Soares
date: 05/nov/2023
---

# Espiral de Fibonacci colorida

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

```{.python .numberLines}
'''
Code written for a Brazilian Portuguese audiance.
Please adjust the variables' names to your language.
'''
# I've written this Python code inspired by the following post:
# https://mathematica.stackexchange.com/questions/183624/how-to-construct-rectangular-figures-from-the-fibonacci-numbers

from collections import defaultdict
import turtle

# Adjust to you screen resolution
turtle.setup(1366, 768)

# Translate to you language
# color_names = ["", "red", "orange", "yellow", "green", "blue", "indigo", "violet"] 
nome_cores = ["", "vermelho", "laranja", "amarelo", "verde", "azul", "anil", "violeta"]

cores = {
    "vermelho": (255, 0, 0),
    "laranja": (255, 127, 0),
    "amarelo": (255, 255, 0),
    "verde": (0, 255, 0),
    "azul": (0, 0, 255),
    "anil": (75, 0, 130),
    "violeta": (255, 0, 255),
}

n_termos = int(turtle.numinput(
        title='Entrada de dados', 
        prompt='Quantidade de termos (De 3 a 7):',
        default=3,
        minval=3, maxval=7
        )
    )

serie_fib = [0, 1]

for i in range(2, n_termos+1):
    serie_fib.append(serie_fib[i-2]+serie_fib[i-1])

FATOR = 30
coord_quads = defaultdict(list)

# Desenha os retângulos
turtle.right(90)
for j in range(1, n_termos+1):
    turtle.right(90)
    r,g,b = cores[nome_cores[j]]
    turtle.color((0, 0, 0), (r/255, g/255, b/255))
    turtle.begin_fill()
    for k in range(4):
        pos_atual = turtle.position()
        coord_quads[j].append(pos_atual)
        # turtle.write(f"({int(pos_atual[0])}, {int(pos_atual[1])})", align="center")
        turtle.forward(FATOR*serie_fib[j])
        turtle.right(90)

    turtle.end_fill()
    turtle.up()
    ponto_medio = [(x//2, y//2) for (x, y) in 
                   [coord_quads[j][0]+coord_quads[j][2]]][0]
    turtle.goto(*ponto_medio)
    turtle.write(f"{serie_fib[j]}", align="center")
    turtle.goto(*coord_quads[j][2])

    turtle.color('red')
    turtle.stamp()
    turtle.color('black')
    turtle.down()


# Desenha o espiral
turtle.color("black")
turtle.left(90)
for j in range(n_termos, 0, -1):
    turtle.circle(serie_fib[j]*FATOR, 90)

# Encerra a sessão quando usuário clicar na tela
turtle.exitonclick()
```