# Swift Básico (Solução)

## Desafio 1

Declare uma constante `Int` chamada `myAge` e defina-a igual à sua idade. Declare também uma variável `Int` chamada `dogs` e defina-a igual ao número de cachorros que você possui. Então imagine que você comprou um novo filhote e incremente a variável dogs` em um.

**SOLUÇÃO**
```swift
let myAge: Int = 28
var dogs: Int = 0
dogs += 1
```

## Desafio 2

Dado o seguinte código:

```swift
age = 16
print(age)
age = 30
print(age)
```

Declare `age` de forma que compile. Você usou `var` ou `let`?

**SOLUÇÃO**

```swift
var age: Int = 16
print(age)
age = 30
print(age)
```

## Desafio 3

Declare três constantes chamadas `rating1`, `rating2` e `rating3` do tipo `Double` e atribua um valor a cada uma. Calcule a média dos três e armazene o resultado em uma constante chamada `averageRating`.

**SOLUÇÃO**

```swift
let rating1: Double = 4
let rating2: Double = 2
let rating3: Double = 5
let averageRating: Double = (rating1 + rating2 + rating3) / 3
```

Bônus: por que é importante que as constantes sejam do tipo `Double`?

**SOLUÇÃO**

Se elas fossem do tipo `Int`, então você só poderia criar uma média que também fosse um `Int` sem convertê-los primeiro em um `Double`, e a média pode não ser um número inteiro.

## Desafio 4

A potência de um aparelho elétrico pode ser calculada multiplicando a tensão pela corrente. A resistência de tal aparelho pode ser calculada como a potência dividida pela corrente ao quadrado.

- Declare uma constante chamada `voltage` do tipo `Double` e atribua um valor a ela. Em seguida, declare uma constante chamada `current` do tipo `Double` e atribua um valor a ela. Finalmente calcule a potência do aparelho elétrico que você acabou de criar armazenando-a em uma constante chamada `power` do tipo `Double`.

- Calcule a resistência e armazene-a em uma constante chamada `resistance` do tipo `Double`.

**SOLUÇÃO**

```swift
let voltage: Double = 240.0
let current: Double = 7.5
let power: Double = voltage * current
let resistance = power / (current * current)
```

## Desafio 5

Você pode gerar um número inteiro aleatório usando a função `Int.random(in:)`, que seleciona um número aleatório dentro de um intervalo.
Utilize essa função para gerar um número aleatório entre 1 e 6 e guardar em uma constante chamada `diceRoll`.

**SOLUÇÃO**

```swift
let diceRoll = Int.random(in: 1...6)
```
## Desafio 6

Uma equação quadrática é algo no formato:

`a⋅x² + b⋅x + c = 0`

Os valores de `x` que satisfazem isso podem ser resolvidos usando a equação:

`x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`

Declare três constantes chamadas `a`, `b` e `c` do tipo `Double`. Em seguida, calcule os dois valores para `x` usando a equação acima (observando que o ± significa mais ou menos - então um valor de `x` para cada). Armazene os resultados em constantes chamadas `root1` e `root2` do tipo `Double`.

**SOLUÇÃO**

```swift
let a: Double = 2.0
let b: Double = 3.0
let c: Double = 1.0
let root1: Double = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
let root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)
```

## Desafio 7

Quais das seguintes atribuições são válidas?

```swift
let character: Character = "Dog"
let character: Character = "🐶"
let string: String = "Dog"
let string: String = "🐶"
```

**SOLUÇÃO**

```swift
//let character: Character = "Dog" // INVÁLIDO
//let character: Character = "🐶" // VÁLIDO
//let string: String = "Dog" // VÁLIDO
//let string: String = "🐶" // VÁLIDO
```

## Desafio 8

Este código é válido?

```swift
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.Day
```

**SOLUÇÃO**

Inválido porque deveria ser 'day' em vez de 'Day'


## Desafio 9

Qual é o tipo da constante chamada 'value'?

```swift
let value = tuple.1
```

**SOLUÇÃO**

value = 8 do tipo Double

## Desafio 10

Qual é o valor da constante chamada `month`?

```swift
let month = tuple.month
```

**SOLUÇÃO**

month = 8

## Desafio 11

Qual é o valor da constante chamada `summary`?

```swift
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
```

**SOLUÇÃO**

summary = "10 multiplied by 5 equals 50"


## Desafio 12

Qual é a diferença entre `Double.pi` e `Float.pi`?

```swift
let difference = Double.pi - Double(Float.pi)
```

**SOLUÇÃO**

1.50995798975373e-07, ou 0.000000150995798975373

Float é um pouco menos preciso, então faz sentido promovê-lo a um Double. Double é mais preciso, mas não é exato pois isso exigiria um número infinito de bits.


## Desafio 13

O que há de errado com o código a seguir?

```swift
let firstName = "Matt"

if firstName == "Matt" {
    let lastName = "Galloway"
} else if firstName == "Ray" {
    let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
```

**SOLUÇÃO**

`lastName` não está mais no escopo ao definir `fullName`. Uma solução correta:

```swift
let firstName = "Matt"
var lastName = ""
if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
```

## Desafio 14

Em cada uma das seguintes afirmações, qual é o valor da constante booleana `answer`?

```swift
let answer1 = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
```

**SOLUÇÃO**

```swift
let answer1 = true && true // true
let answer2 = false || false // false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1) // true
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0) // true
```

## Desafio 15

Imagine que você está jogando um jogo de cobras e escadas que vai da posição 1 à posição 20. Nele, existem escadas na posição 3 e 7 que levam você para a 15 e 12 respectivamente. Depois, há cobras nas posições 11 e 17 que o levam para 2 e 9, respectivamente.

Crie uma constante chamada `currentPosition` que você pode definir para qualquer posição entre 1 e 20 que desejar. Em seguida, crie uma constante chamada `diceRoll` que você pode definir para qualquer lançamento de dados que desejar. Por fim, calcule a posição final levando em consideração as escadas e cobras, chamando-a de `nextPosition`.

```swift
let currentPosition = 2
let diceRoll = 5
var nextPosition = currentPosition + diceRoll
if nextPosition == 3 {
    nextPosition = 15
} else if nextPosition == 7 {
    nextPosition = 12
} else if nextPosition == 11 {
    nextPosition = 2
} else if nextPosition == 17 {
    nextPosition = 9
}
print("Board position after \(currentPosition) is \(nextPosition)")
```

## Desafio 16

Dado um ano representado por um `Int` e um mês representado por um `String` em letras minúsculas e usando as três primeiras letras, calcule o número de dias do mês. Você precisa contabilizar os anos bissextos lembrando que fevereiro ("fev") tem 29 dias em um ano bissexto e 28 em caso contrário. Um ano bissexto ocorre a cada 4 anos, a menos que o ano seja divisível por 100, mas se for divisível por 400, na verdade é um ano bissexto.

**SOLUÇÃO**

```swift
let month = "feb"
let year = 2016
var days = 0
if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
    days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
    days = 30
} else if month == "feb" {
    if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
        days = 29
    } else {
        days = 28
    }
}
if days > 0 {
    print("\(month) has 31 days")
} else {
    print("Invalid month!")
}
```

## Desafio 17

Dado um número, determine a próxima potência de 2 acima ou igual a esse número.

**SOLUÇÃO**

```swift
let number = 946
var trial = 1
var times = 0
while trial < number {
    trial = trial * 2
    times += 1
}
print("Next power of 2 >= \(number) is \(trial) which is 2 to the power of \(times)")
```

## Desafio 18

Dado um número, imprima o número triangular para esse número. Você pode se atualizar sobre números triangulares aqui: [https://pt.wikipedia.org/wiki/Número_triangular](https://pt.wikipedia.org/wiki/Número_triangular)

**SOLUÇÃO**

```swift
var depth = 5
var count = 1
var triangularNumber = 0
while count <= depth {
    triangularNumber += count
    count += 1
}
print("Triangular number with depth \(depth) is \(triangularNumber)")
```

## Desafio 19

Calcule o enésimo número de Fibonacci. Lembre-se de que os números de Fibonacci iniciam sua sequência com 1 e 1 e, em seguida, os números subsequentes na sequência são iguais aos dois valores anteriores somados. Você pode se atualizar aqui: [https://pt.wikipedia.org/wiki/Sequência_de_Fibonacci](https://pt.wikipedia.org/wiki/Sequência_de_Fibonacci)

**SOLUÇÃO**

```swift
let n = 10
var current = 1
var previous = 1
var done = 2
while done < n {
    let next = current + previous
    previous = current
    current = next
    done += 1
}
print("Fibonacci number \(n) is \(current)")
```

## Desafio 20

Use um loop para imprimir a tabuada até 12 de um dado número.

**SOLUÇÃO**

```swift
let factor = 7
var i = 0
var accumulator = 0
while i <= 12 {
    print("\(factor) x \(i) = \(accumulator)")
    accumulator += 7
    i += 1
}
```

## Desafio 21

Imprima uma tabela mostrando o número de combinações para criar cada número de 2 a 12 dados 2 dados de seis lados. Você não deve usar uma fórmula, mas sim calcular o número de combinações exaustivamente considerando cada possível lançamento de dados.

**SOLUÇÃO**

```swift
var target = 2
while target <= 12 {
    var combinationsFound = 0
    var valueOnFirstDice = 1
    while valueOnFirstDice <= 6 {
        var valueOnSecondDice = 1
        while valueOnSecondDice <= 6 {
          if valueOnFirstDice + valueOnSecondDice == target {
            combinationsFound += 1
          }
          valueOnSecondDice += 1
        }
        valueOnFirstDice += 1
    }
    print("\(target):\t\(combinationsFound)")
    target += 1
}
```

## Desafio 22

No loop `for` a seguir:

```swift
var sum = 0
for i in 0...5 {
    sum += i
}
```
Qual será o valor de `sum` e quantas iterações acontecerão?

**SOLUÇÃO**

soma = 15, 6 iterações (0, 1, 2, 3, 4, 5)

## Desafio 23

No loop `while` abaixo:

```swift
var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}
```

Quantas instâncias do caractere “a” haverá em `aLotOfAs`? Dica: `aLotOfAs.count` lhe dirá quantos caracteres existem na string `aLotOfAs`.

**SOLUÇÃO**

`aLotOfAs` contém 10 instâncias de "a"

## Desafio 24

Considere a seguinte instrução switch:

```swift
switch coordinates {
    case let (x, y, z) where x == y && y == z:
        print("x = y = z")
    case (_, _, 0):
        print("On the x/y plane")
    case (_, 0, _):
        print("On the x/z plane")
    case (0, _, _):
        print("On the y/z plane")
    default:
        print("Nothing special")
}
```

O que esse código imprimirá quando as coordenadas forem cada uma das seguintes?

```swift
let coordinates = (1, 5, 0)
let coordinates = (2, 2, 2)
let coordinates = (3, 0, 1)
let coordinates = (3, 2, 5)
let coordinates = (0, 2, 4)
```

**SOLUÇÃO**

```swift
let coordinates = (1, 5, 0) // "On the x/y plane"
let coordinates = (2, 2, 2) // "x = y = z"
let coordinates = (3, 0, 1) // "On the x/z plane"
let coordinates = (3, 2, 5) // "Nothing special"
let coordinates = (0, 2, 4) // "On the y/z plane"
```

## Desafio 25

Imprima uma contagem regressiva de 10 a 0. (Observação: não use o método `reversed()`, que será apresentado posteriormente.)

**SOLUÇÃO**

```swift
for i in 0...10 {
    print(10 - i)
}
```

## Desafio 26

Imprimir 0,0, 0,1, 0,2, 0,3, 0,4, 0,5, 0,6, 0,7, 0,8, 0,9, 1,0.

**SOLUÇÃO**

```swift
var value = 0.0
for _ in 0...10 {
    print(value)
    value += 0.1
}
// Solução alternativa
for counter in 0...10 {
    print(Double(counter) * 0.1)
}
```

## Desafio 27

As funções `stride(from:to:by:)` e `stride(from:through:by:)` do Swift permitem que você faça loops com muito mais flexibilidade. Por exemplo, se você quiser fazer um loop de 10 a 20 em intervalos de 4 você pode escrever:

```swift
for index in stride(from: 10, to: 22, by: 4) {
    print(index)
}
// imprime 10, 14, 18

for index in stride(from: 10, through: 22, by: 4) {
    print(index)
}
// imprime 10, 14, 18, and 22
```

- Qual é a diferença entre as duas sobrecargas das funções stride?

**SOLUÇÃO**

stride(from:to:by:) NÃO inclui o número final (como intervalo semi-aberto)

stride(from:through:by:) inclui o número final (como intervalo fechado)

- Escreva um loop que vá de 10.0 a (e incluindo) 9.0, decrementando em 0.1.

```swift
for index in stride(from: 10, through: 9, by: -0.1) {
    print(index)
}
```

## Desafio 29

Quando estamos nos familiarizando com uma linguagem de programação um exercício útil é escrever uma função para determinar se um número é primo ou não.

Primeiro, escreva a seguinte função:

```swift
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool
```

Você usará ela para determinar se um número é divisível por outro. Deve retornar `true` quando `number` for divisível por `divisor`.

**Dica**: Você pode usar o operador módulo (`%`) para te ajudar.

Em seguida, escreva a função principal:

```swift
func isPrime(_ number: Int) -> Bool
```

Ela deve retornar `true` se `number` for primo e `false` caso contrário. Um número é primo se for divisível apenas por 1 e por ele mesmo. Você deve percorrer os números de 1 ao número e encontrar os divisores do número. Se ele tiver outros divisores além de 1 e ele mesmo, então o número não é primo. Você precisará usar a função `isNumberDivisible(_:by:)` que escreveu anteriormente.

Use esta função para verificar os seguintes casos:

```swift
isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true
```

**Dica 1**: Números menores que 0 não devem ser considerados primos. Verifique este caso no início da função e retorne antecipadamente se o número for menor que 0.

**Dica 2**: Use um loop `for` para encontrar divisores. Se você começar em dois e terminar antes do próprio número, assim que encontrar um divisor, poderá retornar `false`.

**Dica 3**: Se você quiser um código *bem* mais legal, você pode simplesmente fazer um loop de dois até chegar à raiz quadrada de `number` em vez de ir até o próprio `number`. Vou deixar como exercício para você descobrir o porquê. Pode ser útil pensar no número 16, cuja raiz quadrada é 4. Os divisores de 16 são 1, 2, 4, 8 e 16.

**SOLUÇÃO**

```swift
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}
func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    } 
    // Lidamos com esses casos antecipadamente porque queremos ter certeza de que o intervalo 2...root (usado abaixo) é válido, o que é o caso apenas quando root >= 2, portanto, para números >= 4.
    if number <= 3 {
        return true
    }
    let doubleNumber = Double(number)
    let root = Int(doubleNumber.squareRoot())
    for divisor in 2...root {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    return true
}
```

## Desafio 30

Neste desafio, você verá o que acontece quando uma função chama *a si mesma*, um comportamento chamado **recursão**. Isso pode parecer estranho, mas pode ser bastante útil.

Você vai escrever uma função que calcula um valor da **sequência de Fibonacci**. Qualquer valor na sequência é a soma dos dois valores anteriores. A sequência é definida de forma que os dois primeiros valores sejam iguais a 1. Ou seja, `fibonacci(1) = 1` e `fibonacci(2) = 1`.

Escreva sua função usando a seguinte declaração:

```swift
func fibonacci(_ number: Int) -> Int
```

Em seguida, verifique se você escreveu a função corretamente executando-a com os seguintes números:

```swift
fibonacci(1)  // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55
```

**Dica 1**: Para valores de `number` menores que 0, você deve retornar 0.

**Dica 2**: Para iniciar a sequência, codifique um valor de retorno de 1 quando `number` for igual a 1 ou 2.

**Dica 3**: Para qualquer outro valor, você precisará retornar a soma de chamar `fibonacci` com `number - 1` e `number - 2`.

**SOLUÇÃO**

```swift
func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 || number == 2 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}
```

## Desafio 31

Quais das seguintes linhas de código são válidas?

```swift
var name: String? = "Ray"
var age: Int = nil
let distance: Float = 26.7
var middleName: String? = nil
```

**SOLUÇÃO**

```swift
var name: String? = "Ray" // Válido
var age: Int = nil // Invalido: nil só pode ser usado com tipos optional
let distance: Float = 26.7 // Válido
var middleName: String? = nil // Válido
```

## Desafio 32

Primeiro, crie uma função que retorne o número de vezes que um inteiro pode ser dividido por outro inteiro sem deixar resto. A função deve retornar `nil` se a divisão não produzir um número inteiro. Nomeie a função `divideIfWhole`.

Em seguida, escreva o código que tenta fazer o unwrap do resultado optional da função. Deve haver dois casos: em caso de sucesso, imprima `"Sim, ele divide \(resposta) vezes"`, e em caso de falha, imprima `"Indivisível :["`.

Por fim, teste sua função:

1. Divida 10 por 2. Ela deve imprimir `"Sim, ele divide 5 vezes."`
2. Divida 10 por 3. Ela deve imprimir `"Indivisível :[."`

**Dica 1**: Use o seguinte trecho de código como o início da assinatura da função:

```swift
func divideIfWhole(_ value: Int, by divisor: Int)
```
Você precisará adicionar o tipo de retorno, que será optional!

**Dica 2**: Você pode usar o operador de módulo (`%`) para determinar se um valor é divisível por outro; lembre-se que esta operação retorna o resto da divisão de dois números. Por exemplo, `10 % 2 = 0` significa que 10 é divisível por 2 sem resto, enquanto `10 % 3 = 1` significa que 10 é divisível por 3 com resto 1.

**SOLUÇÃO**

```swift
func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    } else {
        return nil
    }
}
if let answer = divideIfWhole(10, by: 2) {
    print("Sim, ele divide \(answer) vezes.")
} else {
    print("Indivisível :[.")
}
if let answer = divideIfWhole(10, by: 3) {
    print("Sim, ele divide \(answer) vezes.")
} else {
    print("Indivisível :[.")
}
```


## Desafio 33

O código que você escreveu no último desafio usou instruções `if`. Neste desafio, refatore esse código para usar o operador nil coalescing. Desta vez, imprima `"Divida X vezes"` em todos os casos, mas se a divisão não resultar em um número inteiro, então `X` deve ser `0`.

**SOLUÇÃO**

```swift
let answer1 = divideIfWhole(10, by: 2) ?? 0
print("Divida \(answer1) vezes.")
let answer2 = divideIfWhole(10, by: 3) ?? 0
print("Divida \(answer2) vezes.")
```

## Desafio 34

Considere o seguinte optional aninhado. Ele corresponde a um número dentro de uma caixa dentro de uma caixa dentro de uma caixa.

```swift
let number: Int??? = 10
```

Se você imprimir o número, obterá o seguinte:

```swift
print(number)
// Optional(Optional(Optional(10)))

print(number!)
// Optional(Optional(10))
```

1. Faça force unwrap e imprima o `number`.
2. Faça o optional binding de `number` com if let.
3. Escreva uma função `printNumber(_ number: Int???)` que use `guard` para imprimir o número somente se ele tiver valores diferentes de nulo.

**SOLUÇÃO**

```swift
let number: Int??? = 10
// 1
print(number!!!)
// 2
if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}
// Uma maneira melhor de fazer o optional binding sem todos os {}
if let n1 = number, let n2 = n1, let n3 = n2 {
    print(n3)
}
// 3
func printNumber(_ number: Int???) {
    guard let n1 = number, let n2 = n1, let n3 = n2 else {
        return
    }
    print(n3)
}
```
