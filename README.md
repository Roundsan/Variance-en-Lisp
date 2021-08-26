# variance
### Round <round@symfunc.com>

#### Comment utiliser

Lancer emacs et rentrer les commandes suivantes dans le slime repl

`(ql:quickload "variance")

(in-package #:variance)`

Le programme et ses symboles vous sont maintenant accessible

#### Explication

Ce programme permet de calculer la variance d'une liste de nombres.
Une variance se calcule de la manière suivante:

1) A chaque nombre de la liste on soustrait la moyenne de cette liste et on fait puissance de 2 sur ce résultat

2) On additionne tous les résultats

3) On divise par la quantité de nombres, et on a le résultat


#### Exemples

(variance '(4 7 87 56 8)) => renvoie: 1194.6875

(variance '(8 15)) => renvoie: 12.25

(variance '(32)) => renvoie: erreur, la fonction demande au moins 2 nombres

## Licence

Symfunc
