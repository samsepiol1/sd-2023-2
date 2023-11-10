defmodule Recursividade do

  # Casos mais simples
  def fact(0), do: 1
  def fact(1), do: 1
  def fact(n) when (n>1), do: n*fact(n-1)

  # Série de Fibonacci
  # Retornando tupla com {:status, lista}
  def fib(0) do
    {:ok, [0]}
  end

  def fib(1) do
  	{:ok, [0, 1]}
  end

  def fib(n) when (n>1) do
    {:ok, fib_n_1} = fib(n-1) # Recebe valores a partir da chamada de função
    {:ok, fib_n_2} = fib(n-2) # Recebe valores a partir da chamada de função
    resultado = List.last(fib_n_2) + List.last(fib_n_1) # Calcula o resultado para fib de n
    # IO.puts("#{resultado}") # Era só para depurar
    {:ok, fib_n_1 ++ [resultado]} # Retorna a tupla
  end
end
