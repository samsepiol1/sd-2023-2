defmodule Equacao2grau do
  # calcula (a, b, c, x)
  def calcula_valor(0, _, _, _), do: raise "O 1º coeficiente deve ser diferente de zero"
  def calcula_valor(a, b, c, x), do: a*:math.pow(x, 2) + b*x + c

  def descobre_raizes(0, _, _), do: raise "O 1º coeficiente deve ser diferente de zero"
  def descobre_raizes(a, b, c) when is_number(a) and is_number(b) and is_number(c) do
    delta = :math.pow(b, 2) - 4*a*c
    cond do
      (delta < 0)  -> {:error}
      (delta == 0) -> {:ok, [(-b)/(2*a)]}
      (delta > 0)  -> {:ok, [(-b - :math.sqrt(delta))/(2*a), (-b + :math.sqrt(delta))/(2*a)]}
    end
  end
end
