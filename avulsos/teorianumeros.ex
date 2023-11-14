defmodule TeoriaNumeros do
  @moduledoc """
  Funções simples de teoria dos números.
  """

  @doc """
  Calcula o Máximo Divisor Comum (MDC) de dois números inteiros.
  """
  def mdc(a, b) when (a==b), do: a
  def mdc(a, b) when (a>b), do: mdc(a-b, b)
  def mdc(a, b) when (b>a), do: mdc(b-a, a)

  @doc """
  Calcula o Mínimo Múltiplo Comum (MMC) de dois números inteiros.
  """
  def mmc(a, b) when (a !=0) and (b != 0) do
    div((a*b), mdc(a,b))
  end
end
