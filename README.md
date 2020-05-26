<h1> SHELL SCRIPT <h1>

***

<h2> Entrada e Saída <h2>

* echo - exibe uma mensagem e pula uma linha

```
-e : adiciona parâmetros de controle
-n : não quebra linhas

Ex.: # echo -e "Oi!\nTudo Bem?"
```

* printf - exibe uma mensagem, e mantém a mesma linha

```
Ex.: # printf "Olá!"
```

* read - lê uma entrada do usuário

```
-p : exibe uma mensagem
-s : não exibe o valor ao digitar (senhas)
-t : aguarda um tempo determinado (s)

Ex.: # read -p "Qual a sua idade? " idade
     # echo $idade
```

<h2>Variáveis Especiais<h2>

```
$0 : Nome / caminho do script
$1 - $9 : exibe os argumentos após o comando
$* : quando se recebe mais de 9 argumentos, exibe todos
S? : errorlevel do último comando
```

<h2>Filtros<h2>

* grep "string" : encontra a string nas linhas

```
--color : colore a string buscada
-v : inverte a busca, e exibe o que não contém a string

Ex.: # cat teste.sh | grep --color "nome"
     # cat teste.sh | grep -v --color "nome"
```

* cut : divide uma string

```
-d"parâmetro" : parâmetro delimitador do corte
-f'n' : exibe a string contida no espaço 'n'
-b 'n': exibe o caractere contido no espaço n da string
tr "c1" "c2" : substitui o caractere c1 pelo c2
-d : deleta um caractere  

Ex.: # echo "um dois três quatro cinco" | cut -d" " -f3
     # echo "um dois três quatro cinco" | cut -d" " -f3,4
     # echo "um dois três quatro cinco" | cut -d" " -f3-5
     # echo "um dois três quatro cinco" | cut -b 10
     # echo "um dois três quatro cinco" | cut -b 10
```

* tr "c1" "c2" :

```
-d : deleta o caractere

Ex.: # echo "um dois três quatro cinco" | tr " " ":"
     # echo "um dois três quatro cinco" | tr -d "r"
```

<h2>Condições<h2>

* IF

```
if [ condição ];
  then comando;

else
  comando;

fi

Ex.: # if [ a == a ]; then echo "São iguais"; else echo "são diferentes"; fi
```

* CASE

```
case $variavel in

  op1) comando;;
  op2) comando;;
  *) comando padrão;;

esac
```

* TEST

```
test [ condição ] : salva o resultado na variável $?

Ex.: # test 10 -gt 5
     # echo $?
```
