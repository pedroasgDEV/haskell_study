type Nome = String
type Idade = Int
type CPF = String
type Pessoa = (Nome, Idade, CPF)

pedro :: Pessoa
pedro = ("Pedro Augusto", 23, "127.211.966-18")

calcAno :: Pessoa -> Int
calcAno (_, i, _) = 2024 - i
