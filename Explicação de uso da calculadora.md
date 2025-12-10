Explicação de uso da calculadora 

Estrutura do Projeto
projeto-calculadora
 ├── calculadora.sh      # Script executável
 └── comandos.txt        # Comandos utilizados nos itens 3, 4 e 5

Pré-requisitos

Para executar este projeto, é necessário:

Ubuntu ou outro sistema Linux (WSL também funciona)

Python 3 instalado

Permissão para executar arquivos

Verifique o Python:

python3 --version

Como Executar o Arquivo calculadora.sh
1. Verifique a linha shebang

O arquivo precisa começar com:

#!/usr/bin/env python3


Essa linha define que o interpretador Python 3 deve ser utilizado.

2. Conceda permissão de execução

Antes de rodar:

chmod 755 calculadora.sh


Significado das permissões:

Proprietário: leitura, escrita e execução

Grupo: leitura e execução

Outros: leitura e execução

3. Execute o script

Dentro da pasta do arquivo:

./calculadora.sh


Ou utilizando o caminho completo:

/home/gavazzi/calculadora.sh

Exemplo de Uso

A execução apresenta um menu e solicita dados para realizar a operação desejada:

Escolha a operação:
1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão

Digite a opção: 1
Digite o primeiro número: 10
Digite o segundo número: 5

Resultado: 15

Usando WSL no Windows

Se estiver utilizando o Ubuntu via WSL, abra a pasta atual diretamente no Explorador de Arquivos do Windows:

explorer.exe .