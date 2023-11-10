from collections import defaultdict
import turtle

turtle.setup(1366, 768)

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