"""Gestion des formulaires avec WTF pour les films
Fichier : gestion_films_wtf_forms.py
Auteur : OM 2022.04.11

"""
from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, DateField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, NumberRange, DataRequired
from wtforms.validators import Regexp
from wtforms.widgets import TextArea


class FormWTFAddFilm(FlaskForm):
    montant_depense_add_wtf = IntegerField("Montant (max 1000000)", validators=[
        NumberRange(min=1, max=1000000, message="Min 1 et max 1000000")
    ])
    description_depense_add_wtf = StringField("Description", widget=TextArea(), validators=[
        Length(min=2, max=255, message="min 2 max 255")
    ])
    date_depense_add_wtf = DateField("Date Depense", validators=[
        InputRequired("Date obligatoire"),
        DataRequired("Date non valide")
    ])
    submit = SubmitField("Enregistrer la dépense")


class FormWTFUpdateFilm(FlaskForm):
    """
        Dans le formulaire "film_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """

    nom_film_update_wtf = IntegerField("Montant (max 1000000)", validators=[
        NumberRange(min=1, max=1000000, message="Min 1 et max 1000000")
    ])
    description_film_update_wtf = StringField("description", widget=TextArea())
    datesortie_film_update_wtf = DateField("Date Depense", validators=[InputRequired("Date obligatoire"),
                                                                                 DataRequired("Date non valide")])
    submit = SubmitField("Update film")


class FormWTFDeleteFilm(FlaskForm):
    """
        Dans le formulaire "film_delete_wtf.html"

        nom_film_delete_wtf : Champ qui reçoit la valeur du film, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "film".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_depense".
    """
    nom_film_delete_wtf = StringField("Effacer ce film")
    submit_btn_del_film = SubmitField("Effacer film")
    submit_btn_conf_del_film = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")
