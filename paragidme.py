def entrer_donnees():
    """Collecte les informations des étudiants, y compris leurs noms et leurs notes."""
    noms = []
    notes = []
    nb_etudiants = int(input("Entrez le nombre total d'étudiants à enregistrer : "))
    for i in range(nb_etudiants):
        nom = input(f"Saisissez le nom de l'étudiant numéro {i + 1} : ")
        note = float(input(f"Indiquez la note obtenue par {nom} : "))
        noms.append(nom)
        notes.append(note)
    return noms, notes

def moyenne_notes(notes):
    """Effectue le calcul de la moyenne à partir d'une liste de notes."""
    return sum(notes) / len(notes) if notes else 0

def liste_resultats(noms, notes):
    """Divise les étudiants en catégories : réussite et échec, en fonction de leurs notes."""
    reussite = [noms[i] for i in range(len(notes)) if notes[i] >= 10]
    echec = [noms[i] for i in range(len(notes)) if notes[i] < 10]
    print("\nÉtudiants qui ont réussi :", ", ".join(reussite))
    print("Étudiants en échec :", ", ".join(echec))

def top_note(noms, notes):
    """Repère et affiche l'étudiant avec la meilleure performance."""
    if not notes:
        print("Pas de données disponibles pour déterminer la meilleure note.")
        return
    indice_meilleure = notes.index(max(notes))
    print(f"\nL'étudiant ayant obtenu la meilleure note est {noms[indice_meilleure]} avec un score de {notes[indice_meilleure]}.")

def programme_principal():
    """Orchestre les différentes étapes du programme : saisie, calcul et affichage."""

    noms, notes = entrer_donnees()

    moyenne = moyenne_notes(notes)
    print(f"\nLa moyenne générale de la classe est : {moyenne:.2f}.")


    liste_resultats(noms, notes)


    top_note(noms, notes)


if __name__ == "__main__":
    programme_principal()
