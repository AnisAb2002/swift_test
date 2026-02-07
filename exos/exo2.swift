//exo codage : tableau et tuples et dictoinaires

import Foundation

// 1 Opérations sur les Tableaux
print("\n1 Opérations sur les Tableaux")
var tab = [33, 888]  // Créer un tableau d'entiers.

tab += [64, 4444, 894, 4, 5]  // Ajouter cinq entiers supplémentaires au tableau.

tab.remove(at: 1)  //Supprimer le deuxième élément du tableau.

for i in tab {
    print(i)
}  //Imprimer chaque élément du tableau en utilisant une boucle.

// 2) Manipulation des Tableaux
print("\n2) Manipulation des Tableaux")
var couleur = ["rouge", "noir", "blanc", "gris", "rose"]  //Créer un tableau de chaînes de caractères, chacune représentant une couleur.

couleur[3] = "violet"  //Changer le quatrième élément du tableau en "violet".

print(couleur[0], ", ", couleur.last ?? "")  //Imprimer le premier et le dernier élément du tableau.

//Bonus : Utiliser le liage optionnel pour déballer en toute sécurité et imprimer le
if !couleur[4].isEmpty {
    print(couleur[4])
}  //cinquième élément du tableau (s'il existe).

//3)Création de Tuples
print("\n3)Création de Tuples")

let xy = (x: 88, y: 77)   //Créer un tuple représentant une coordonnée avec une valeur x et y.

let xyz = (x: 88, y: 78, z: 11)  //Créer un autre tuple représentant un point 3D avec des valeurs x, y, et z.

//Imprimer les valeurs des deux tuples.
print("x et y : ",xy)
print("x et y et z : ",xyz)

//  4. Décomposition de Tuples
print("\n4 Décomposition de Tuples")

//Créer un tuple avec des éléments nommés représentant une personne (nom, âge, et
//intitulé de poste)
let pers = (nom: "Anis", age: 23, poste: "etudiant")
//Imprimer chaque élément en accédant directement via le tuple.
print("nom : ",pers.nom," age : ", pers.age," poste : ",pers.poste)

//Décomposer le tuple en variables individuelles, puis imprimer-les.
let (nom, age, poste) = pers

print("nom : ",nom," age : ", age," poste : ",poste)