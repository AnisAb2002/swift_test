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

print(couleur[0], ", ", couleur.last ?? " aucun element ")  //Imprimer le premier et le dernier élément du tableau.

//Bonus : Utiliser le liage optionnel pour déballer en toute sécurité et imprimer le
if !couleur[4].isEmpty {
    print(couleur[4])
}  //cinquième élément du tableau (s'il existe).

//3)Création de Tuples
print("\n3)Création de Tuples")

let xy = (x: 88, y: 77)  //Créer un tuple représentant une coordonnée avec une valeur x et y.

let xyz = (x: 88, y: 78, z: 11)  //Créer un autre tuple représentant un point 3D avec des valeurs x, y, et z.

//Imprimer les valeurs des deux tuples.
print("x et y : ", xy)
print("x et y et z : ", xyz)

//  4. Décomposition de Tuples
print("\n4 Décomposition de Tuples")

//Créer un tuple avec des éléments nommés représentant une personne (nom, âge, et
//intitulé de poste)
let pers = (nom: "Anis", age: 23, poste: "etudiant")
//Imprimer chaque élément en accédant directement via le tuple.
print("nom : ", pers.nom, " age : ", pers.age, " poste : ", pers.poste)

//Décomposer le tuple en variables individuelles, puis imprimer-les.
let (nom, age, poste) = pers

print("nom : ", nom, " age : ", age, " poste : ", poste)

//5. Bases des Dictionnaires
print("\n 5. Bases des Dictionnaire")
//Créer un dictionnaire qui associe des noms (String) à des âges (Int).
var dict = [String: Int]()
dict["Anis"] = 23
dict["Cristiano"] = 40  //Ajouter ainsi que deux autres entrées dans le dictionnaire.

//Mettre à jour l'âge de l'une des entrées.
dict.updateValue(41, forKey: "Cristiano")

if let removedValue = dict.removeValue(forKey: "Anis") {
    print("\(removedValue) was removed.")
}  //Retirer une entrée du dictionnaire.

//Parcourer le dictionnaire et imprimer chaque paire clé-valeur.
for (nom, age) in dict {
    print("nom : \(nom), age : \(age)")
}

//6. Dictionnaires Avancés
print("\n 6. Dictionnaires Avancés")

//Créer un dictionnaire représentant une voiture, où les clés sont des propriétés (comme
//"couleur", "marque", "année") et les valeurs sont les détails respectifs.
let voiture: [String: String] = [
    "marque": "BMW",
    "couleur": "Noir",
    "année": "2026",
]

print(voiture["marque"] ?? "aucun")  //Accéder et imprimer la valeur de "marque".

//Déballer en toute sécurité et imprimer la valeur de "modèle" en utilisant le liage optionnel
//(la clé "modèle" peut ou non exister).
if let modele = voiture["modèle"] {
    print("Modèle :", modele)
} else {
    print("le modele est inconnu")
}

//7. Tri des Tableaux
print("7. Tri des Tableaux ")
//Créer un tableau d'entiers.
tab = [2, 5, 3]
//Trier le tableau en ordre croissant et imprimer le résultat.
var croi = tab.sorted()
print("croissant : ", croi)
//Trier le tableau en ordre décroissant et imprimer le résultat.
var decroi = tab.sorted(by: >)
print("decroissant : ", decroi)

//  8 Structures Mixtes
print("\n 8. Structures Mixtes")

//Créer un tableau de dictionnaires, chaque dictionnaire représentant un livre avec des
//clés pour le titre, l'auteur, et l'année de publication.
var livres = [[String: String]]()

//Ajouter trois livres au tableau.
livres.append(["titre": "1984", "auteur": "George Orwell", "année": "1949"])
livres.append(["titre": "Dracula", "auteur": "Bram Stoker", "année": "1897"])
livres.append(["titre": "L'Étranger", "auteur": "Albert Camus", "année": "1942"])

//Imprimer le titre et l'auteur de chaque livre en utilisant une boucle.
for l in livres {
    if let t = l["titre"], let a = l["auteur"] {
        print("titre : \(t), écrit par : \(a)")
    }
}

//9. Dictionnaires Complexes
print("\n9. Dictionnaires Complexes")

// Créer un dictionnaire où les clés sont des genres (par exemple, "fiction", "non-fiction") et
//les valeurs sont des tableaux de titres de livres dans ce genre.
var livresFiction = [String: [String]]()

livresFiction["fiction"] = ["1984", "Dracula", "Frankenstein"]
livresFiction["non-fiction"] = ["L'Etranger", "Central Park", "Le Rebelle"]
//Ajouter au moins deux genres, chacun avec trois titres de livres.

//Parcourer le dictionnaire et imprimer chaque genre ainsi que les titres qu'il contient.
for (f, lv) in livresFiction {
    print("genre :", f)
    for l in lv {
        print(" ... \(l)")
    }
}

//10. Filtrage des Dictionnaires
print("\n 10. Filtrage des Dictionnaires")

// Créer un dictionnaire qui associe des noms de produits à leurs prix.
var produits = [String: Float]()
produits = [
    "Lait": 3,
    "Café": 2.5,
    "Legumes": 5,
]
//Écriver une fonction qui prend le dictionnaire et une limite de prix, et retourne un
//dictionnaire avec uniquement les produits qui sont en dessous de la limite de prix.
func limiteProduits(liste: [String: Float], limite: Float) -> [String: Float] {
    var nvListe: [String: Float] = [:]
    for (prd, prix) in liste {
        if prix < limite {
            nvListe[prd] = prix
        }
    }
    return nvListe
}
//Tester la fonction avec un dictionnaire de votre choix et une limite de prix raisonnable.
let listeLimite = limiteProduits(liste : produits, limite :4.5)
print(listeLimite)