defmodule Correcao01 do
  @arq_csv "sd-respostas-01.csv"
  # 8 campos
  @campos_resposta [
    :data_hora,
    :email,
    :matricula,
    :nome,
    :funcao,
    :arg_a,
    :arg_b,
    :resultado
  ]

  def mdc(0, _), do: 0
  def mdc(_, 0), do: 0
  def mdc(a, b) when (a==b), do: a
  def mdc(a, b) when (a>b), do: mdc(a-b, b)
  def mdc(a, b) when (b>a), do: mdc(b-a, a)

  @doc """
  Calcula o Mínimo Múltiplo Comum (MMC) de dois números inteiros positivos.
  """
  def mmc(a, b) when (a !=0) and (b != 0) do
    div((a*b), mdc(a,b))
  end

  def ler_arq_respostas do
    File.read!(@arq_csv)
    |> String.split("\r\n")
  end

  def dados_resposta(resposta) do
    Enum.zip(@campos_resposta, resposta)
    |> Enum.into(%{})
  end

  def mdc_ou_mmc("Neque.lorem/2") do 
    &mdc/2
  end

  def mdc_ou_mmc("Neque.ipsum/2") do
    &mmc/2
  end

  def mdc_ou_mmc(_) do
    IO.puts("Função não implementada")
  end

  def confere_resultado(%{data_hora: _, email: _, matricula: _, nome: _, 
                          funcao: s_func, arg_a: s_a, arg_b: s_b, resultado: s_res}) do
    
    a = String.to_integer(s_a)
    b = String.to_integer(s_b)
    res_enviado = String.to_integer(s_res)
    func = mdc_ou_mmc(s_func)
    res_calculado = func.(a, b)
    res_enviado == res_calculado
  end

  def principal do
    respostas = ler_arq_respostas()
    prim_resposta = List.first(respostas)
    dados_prim_resp = dados_resposta(String.split(prim_resposta, ","))
    dados_prim_resp
  end
end
