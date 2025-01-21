% Faits : Définition des recettes et de leurs ingrédients
recette(pizza, farine).
recette(pizza, eau).
recette(pizza, sel).
recette(pizza, levure).
recette(pizza, tomate).
recette(pizza, fromage).

recette(salade, laitue).
recette(salade, tomate).
recette(salade, concombre).
recette(salade, vinaigre).
recette(salade, huile).

recette(pates_carbonara, pates).
recette(pates_carbonara, creme).
recette(pates_carbonara, lardons).
recette(pates_carbonara, fromage).
recette(pates_carbonara, sel).
recette(pates_carbonara, poivre).

recette(omelette, oeufs).
recette(omelette, sel).
recette(omelette, poivre).
recette(omelette, fromage).
recette(omelette, herbes).

recette(sandwich_jambon_beurre, pain).
recette(sandwich_jambon_beurre, beurre).
recette(sandwich_jambon_beurre, jambon).
recette(sandwich_jambon_beurre, salade).

% Vérifie
recettedisponible(Recette, Ingredients) :-
    recette(Recette, ),                   % Vérifie que la recette existe
    forall(recette(Recette, Ing), member(Ing, Ingredients)). % Vérifie tous les ingrédients
