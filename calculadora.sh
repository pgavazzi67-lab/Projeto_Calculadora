#!/usr/bin/env python3

def calcular(num1, num2, operacao):
    if operacao == '+':
        resultado = num1 + num2
    elif operacao == '-':
        resultado = num1 - num2
    elif operacao == '*':
        resultado = num1 * num2
    elif operacao == '/':
        if num2 == 0:
            return "Erro: Divisão por zero não é permitida."
        resultado = num1 / num2
    else:
        return "Erro: Operação inválida."

    if resultado > 100000:
        return "Erro"
    else:
        return resultado

def iniciar_calculadora():
    resultado_anterior = None

    while True:
        if resultado_anterior is not None:

            continuar = input("Deseja continuar a partir do resultado anterior? (s/n): ").lower().strip()
            if continuar == 'n':
                print("Calculadora reiniciada.")
                resultado_anterior = None
                continue
            elif continuar != 's':
                print("Opção inválida. Reiniciando a calculadora.")
                resultado_anterior = None
                continue

            num1 = resultado_anterior
            print(f"O resultado anterior é {num1}. Agora, digite a próxima operação:")
        else:
            try:
                entrada_num1 = input("Digite o primeiro número (ou 's' para sair): ")
                if entrada_num1.lower() == 's':
                    break
                num1 = float(entrada_num1)
            except ValueError:
                print("Entrada inválida. Tente novamente.")
                continue

        operacao = input("Digite a operação (+, -, *, /): ").strip()

        try:
            num2 = float(input("Digite o segundo número: "))
        except ValueError:
            print("Entrada inválida. Por favor, digite um número.")
            continue

        novo_resultado = calcular(num1, num2, operacao)

        if isinstance(novo_resultado, str) and "Erro" in novo_resultado:
            print(novo_resultado)
            resultado_anterior = None
        else:
            print(f"Resultado: {novo_resultado}")
            resultado_anterior = novo_resultado

# Inicia a calculadora
iniciar_calculadora()
