nomes :: (String, String, String)
nomes = ("Pedro", "Augusto", "Concalves")

selectPrim (x, _, _) = x
selectSec (_, y, _) = y
selectTerc (_, _, z) = z