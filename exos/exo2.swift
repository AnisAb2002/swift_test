//exo codage : tableau et tuples et dictoinaires

import Foundation

// 1 Opérations sur les Tableaux

var tab = [33, 888]  // Créer un tableau d'entiers.

tab += [64, 4444, 894, 4, 5]  // Ajouter cinq entiers supplémentaires au tableau.

tab.remove(at: 1)  //Supprimer le deuxième élément du tableau.

for i in tab {
    print(i)
}  //Imprimer chaque élément du tableau en utilisant une boucle.

// 2) Manipulation des Tableaux

var couleur = ["rouge", "noir", "blanc", "gris", "rose"]  //Créer un tableau de chaînes de caractères, chacune représentant une couleur.

couleur[3] = "violet"  //Changer le quatrième élément du tableau en "violet".

print(couleur[0], ", ", couleur.last ?? "")  //Imprimer le premier et le dernier élément du tableau.

//Bonus : Utiliser le liage optionnel pour déballer en toute sécurité et imprimer le
if !couleur[4].isEmpty {
    print(couleur[4])
}  //cinquième élément du tableau (s'il existe).

