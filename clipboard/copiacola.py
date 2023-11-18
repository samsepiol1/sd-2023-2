import pyperclip as clipboard

# Copiar ou Ctrl+C
texto = input('Digite o texto a copiar: ')
clipboard.copy(texto)
print("Seu texto foi copiado para área de transferência.")

# Colar ou Ctrl+V
print("Copie um texto de outra aplicação e")
input('pressione ENTER para recuperá-lo da área de transferência.')

texto = clipboard.paste()
print("Texto colado:", texto)

input("Pressione ENTER para sair.")