-- 1. Retrieve all budgets
SELECT * FROM t_budget;

-- 2. Retrieve all addresses in Lausanne
SELECT * FROM t_adresse WHERE ville = 'Lausanne';

-- 3. Insert a new budget
INSERT INTO t_budget (nom, montant_initial, date_debut, date_fin)
VALUES ('Budget 11', 6000.00, '2024-01-01', '2024-12-31');

-- 4. Update the amount of Budget 1
UPDATE t_budget SET montant_initial = 1100.00 WHERE budget_id = 1;

-- 5. Delete the address with ID 10
DELETE FROM t_adresse WHERE id_adresse = 10;

-- 6. Retrieve all expenses greater than 100
SELECT * FROM t_depense WHERE montant > 100;

-- 7. Join budgets with expenses
SELECT b.nom, d.montant, d.date_depense
FROM t_budget b
JOIN t_depense d ON b.budget_id = d.id_depense;

-- 8. Retrieve total expenses per category
SELECT c.nom_categorie, SUM(d.montant) AS total_expenses
FROM t_categories c
JOIN t_categories_depense cd ON c.id_categorie = cd.fk_categories
JOIN t_depense d ON cd.fk_depense = d.id_depense
GROUP BY c.nom_categorie;

-- 9. Insert a new address
INSERT INTO t_adresse (npa, rue, numero_rue, ville, pays)
VALUES ('9000', 'rue de Lausanne', '78', 'Geneva', 'Swiss');

-- 10. Retrieve the email of a person by name
SELECT e.adresse_email
FROM t_personne p
JOIN t_email e ON p.fk_email = e.id_email
WHERE p.nom = 'John' AND p.prenom = 'Doe';

-- 11. Update the city of address ID 2
UPDATE t_adresse SET ville = 'Montreux' WHERE id_adresse = 2;

-- 12. Delete all expenses with description 'Divers'
DELETE FROM t_depense WHERE description = 'Divers';

-- 13. Retrieve all persons living in Zurich
SELECT * FROM t_personne p
JOIN t_adresse a ON p.fk_adresse = a.id_adresse
WHERE a.ville = 'Zurich';

-- 14. Count the number of budgets
SELECT COUNT(*) AS number_of_budgets FROM t_budget;

-- 15. Sum of all initial budget amounts
SELECT SUM(montant_initial) AS total_initial_budget FROM t_budget;

-- 16. Retrieve all distinct cities
SELECT DISTINCT ville FROM t_adresse;

-- 17. Insert a new expense
INSERT INTO t_depense (montant, date_depense, description)
VALUES (130.00, '2024-01-15', 'Groceries');

-- 18. Retrieve the average expense amount
SELECT AVG(montant) AS average_expense FROM t_depense;

-- 19. Retrieve all budgets ending in 2023
SELECT * FROM t_budget WHERE YEAR(date_fin) = 2023;

-- 20. Retrieve the last 5 expenses
SELECT * FROM t_depense ORDER BY date_depense DESC LIMIT 5;

-- 21. Update the email of person ID 3
UPDATE t_email SET adresse_email = 'new_email@example.com' WHERE id_email = 3;

-- 22. Delete a budget by name
DELETE FROM t_budget WHERE nom = 'Budget 5';

-- 23. Retrieve all categories with more than 5 expenses
SELECT c.nom_categorie, COUNT(d.id_depense) AS number_of_expenses
FROM t_categories c
JOIN t_categories_depense cd ON c.id_categorie = cd.fk_categories
JOIN t_depense d ON cd.fk_depense = d.id_depense
GROUP BY c.nom_categorie
HAVING COUNT(d.id_depense) > 5;

-- 24. Insert a new person
INSERT INTO t_personne (nom, prenom, fk_email, fk_adresse)
VALUES ('Lucas', 'Martin', 11, 11);

-- 25. Retrieve all expenses for a specific budget
SELECT d.*
FROM t_depense d
JOIN t_budget b ON d.id_depense = b.budget_id
WHERE b.nom = 'Budget 1';

-- 26. Retrieve total amount spent per person
SELECT p.nom, p.prenom, SUM(d.montant) AS total_spent
FROM t_personne p
JOIN t_categories_depense cd ON p.id_personne = cd.fk_depense
JOIN t_depense d ON cd.fk_depense = d.id_depense
GROUP BY p.nom, p.prenom;

-- 27. Retrieve all emails with a specific domain
SELECT * FROM t_email WHERE adresse_email LIKE '%@gmail.com';

-- 28. Retrieve expenses in January 2023
SELECT * FROM t_depense WHERE date_depense BETWEEN '2023-01-01' AND '2023-01-31';

-- 29. Retrieve all persons with a specific last name
SELECT * FROM t_personne WHERE nom = 'Smith';

-- 30. Retrieve all categories and their associated expenses
SELECT c.nom_categorie, d.montant, d.date_depense, d.description
FROM t_categories c
JOIN t_categories_depense cd ON c.id_categorie = cd.fk_categories
JOIN t_depense d ON cd.fk_depense = d.id_depense
ORDER BY c.nom_categorie, d.date_depense;

