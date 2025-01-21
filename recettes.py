recettes = {
    "Pizza": {"farine", "eau", "sel", "levure", "tomate", "fromage"},
    "Salade": {"laitue", "tomate", "concombre", "vinaigre", "huile"},
    "Pâtes Carbonara": {"pâtes", "crème", "lardons", "fromage", "sel", "poivre"},
    "Omelette": {"œufs", "sel", "poivre", "fromage", "herbes"},
    "Sandwich Jambon-Beurre": {"pain", "beurre", "jambon", "salade"}
}

def recettes_disponibles(ingredients_disponibles):
    recettes_possibles = []
    for recette, ingredients_recette in recettes.items():
        if ingredients_recette.issubset(ingredients_disponibles):
            recettes_possibles.append(recette)
    return recettes_possibles

test_ingredients = [
    {"farine", "eau", "sel", "levure", "tomate", "fromage"},  # Pizza
    {"pain", "beurre", "jambon"},  # Ne peut pas faire de sandwich car il manque la salade
    {"œufs", "sel", "poivre", "fromage", "herbes"},  # Omelette
    {"laitue", "tomate", "concombre", "vinaigre", "huile"}  # Salade
]

for i, ingredients in enumerate(test_ingredients, 1):
    print(f"Test {i} - Ingrédients disponibles: {ingredients}")
    recettes_possibles = recettes_disponibles(ingredients)
    if recettes_possibles:
        print("Recettes possibles :", ", ".join(recettes_possibles))
    else:
        print("Aucune recette réalisable")
