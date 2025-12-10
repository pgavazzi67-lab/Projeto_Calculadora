Documentação Técnica do Código da Calculadora (Python)
1. Visão Geral

O script implementa uma calculadora interativa em linha de comando utilizando Python 3. Ele fornece suporte para operações aritméticas básicas, controle de fluxo baseado no resultado anterior e tratamento de erro para entradas inválidas e operações indevidas. A arquitetura do programa é composta por duas funções principais:

calcular() — Responsável exclusivamente pela lógica de operações e validações numéricas.

iniciar_calculadora() — Gerencia o fluxo interativo com o usuário, inputs, persistência de estado e tratamento de exceções de entrada.

O programa é iniciado automaticamente por meio da chamada a iniciar_calculadora().

2. Função calcular(num1, num2, operacao)
Responsabilidade

Executa a operação aritmética solicitada e retorna o resultado ou uma mensagem de erro.

Assinatura
def calcular(num1: float, num2: float, operacao: str) -> Union[float, str]

Descrição Técnica

Seleção de operação:
Implementada via cadeia de condicionais if/elif, validando o operador aritmético (+, -, *, /).

Tratamento de divisão:

Verificação explícita de divisão por zero:

if num2 == 0: return "Erro: Divisão por zero não é permitida."


Retorno de erro para operador inválido:
Retorna uma string indicando erro se o operador não for reconhecido.

Validação de limite numérico:
Após o cálculo, o resultado é comparado ao limite predefinido de 100000:

if resultado > 100000:
    return "Erro"


Retorno:
A função retorna um número (float) ou uma string contendo a mensagem de erro.

3. Função iniciar_calculadora()
Responsabilidade

Gerencia o loop principal da aplicação, entrada de dados do usuário, persistência de estado e interpreta mensagens de erro vindas de calcular().

Estrutura Geral

A função utiliza um loop infinito (while True) para manter o programa ativo até que o usuário solicite encerramento explícito.

Persistência de Estado
resultado_anterior = None


A variável atua como armazenamento do último resultado válido, permitindo cálculos encadeados.

Se ocorrer erro, ela é resetada para None.

Fluxo de Execução

Reutilização do resultado anterior

Quando resultado_anterior contém um valor numérico, o usuário é consultado:

Deseja continuar a partir do resultado anterior? (s/n)


Respostas inválidas ou negativas resultam na reinicialização do estado.

Entrada do primeiro número

Aceita comando especial "s" para finalizar a aplicação.

Converte a entrada para float com tratamento de ValueError.

Entrada da operação

Captura operador matemático como string.

Entrada do segundo número

Novamente validado com tratamento de ValueError.

Processamento

Chamada:

novo_resultado = calcular(num1, num2, operacao)


Se o retorno for string contendo "Erro", a continuidade é bloqueada.

Atualização de estado

Resultados válidos são exibidos e atribuídos a resultado_anterior.

4. Encerramento do Programa

O script é finalizado quando o usuário digita "s" ao ser solicitado o primeiro número.
A linha final:

iniciar_calculadora()


executa o loop principal imediatamente quando o arquivo é executado como script standalone.

5. Considerações Técnicas

O fluxo é totalmente síncrono, baseado em I/O bloqueante (função input()).

Não há uso de estruturas complexas, módulos externos ou OOP.

O tratamento de erros utiliza strings como sinalizadores, em vez de exceções personalizadas.

O design prioriza robustez contra entradas inválidas e interatividade simplificada.

A lógica de cálculo está desacoplada do controle de fluxo, facilitando manutenção e testes.