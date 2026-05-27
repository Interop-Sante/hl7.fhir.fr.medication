# Intervention pharmaceutique PN13 avec commentaire - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Intervention pharmaceutique PN13 avec commentaire**

## Intervention pharmaceutique PN13 avec commentaire

### Exemple PN13 d’intervention pharmaceutique avec commentaire

Cette intervention PN13 est traduite en FHIR dans l’instance [Analyse-Intervention-Commentaire-Trad-PN13-FHIR](Task-Analyse-Intervention-Commentaire-Trad-PN13-FHIR.md)

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Messages Phast-id_message="10724" Phast-dh_émission="20220411173053" xmlns="http://www.phast.fr/SIPhII">
	<M_Compte_rendu_analyse_pharm>
		<Patient>
			<Ipp>5000001820</Ipp>
			<Nom_usuel>AVION</Nom_usuel>
			<Nom_naissance>AVION</Nom_naissance>
			<Prénoms>JAUNE</Prénoms>
			<Date_naissance>19611125000000</Date_naissance>
		</Patient>
		<Séjour>
			<Id_séjour>70101274</Id_séjour>
		</Séjour>
		<Compte_rendu_pharm>
			<Dh_validation>20220411173053</Dh_validation>
			<Identification_pharmacien>
				<Identifiant>811102058236</Identifiant>
				<Domaine_identification>1.2.250.1.71.4.2.1</Domaine_identification>
			</Identification_pharmacien>
			<Elément_prescr_pharm>
				<Id_élément_prescr>31626</Id_élément_prescr>
				<Type_élément_prescr>0</Type_élément_prescr>
				<Libellé_élément_prescr>PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours </Libellé_élément_prescr>
				<Cré_arr_mod_val/>
				<Urgent/>
				<Validation_pharm>2</Validation_pharm>
				<Proposition_pharm/>
				<Identification_prescripteur>
					<Identifiant>P082443</Identifiant>
					<Domaine_identification Phast-nomenclature="SIPh-IDP_Domaine_Id">0</Domaine_identification>
					<Nom_usage>LUIGGI</Nom_usage>
					<Prénom_usage>DENIS</Prénom_usage>
					<Nom_famille>LUIGGI</Nom_famille>
					<Prénoms>DENIS</Prénoms>
				</Identification_prescripteur>
				<Voie_administration>54</Voie_administration>
				<Dh_début>20220412060000</Dh_début>
				<Dh_fin>20220415000000</Dh_fin>
				<Indication>En cas de douleur</Indication>
				<Commentaire_pharmacien>Paracetamol en doublon par rapport à un autre antalgique déjà préscrit au patient</Commentaire_pharmacien>
				<Composant_prescrit>
					<Type_composant_3>3</Type_composant_3>
					<Code_composant_3>1181</Code_composant_3>
					<Libellé_composant>PARACETAMOL</Libellé_composant>
					<Quantité_composant_prescrite>
						<Nombre>1000.0</Nombre>
						<Unité>mg</Unité>
					</Quantité_composant_prescrite>
				</Composant_prescrit>
				<Elément_posologie>
					<Type_événement_début>3</Type_événement_début>
					<Evt_structuré_début>
						<Evénement_structuré>
							<Evt_objet>
								<Evt_nature>1</Evt_nature>
								<Evt_typedeDonnée>1</Evt_typedeDonnée>
								<Evt_clinique>
									<Evt_clinique_code>0</Evt_clinique_code>
								</Evt_clinique>
							</Evt_objet>
							<Evt_libellé>Si besoin</Evt_libellé>
						</Evénement_structuré>
					</Evt_structuré_début>
					<Quantité>
						<Nombre>1000.0</Nombre>
						<Unité>mg</Unité>
					</Quantité>
				</Elément_posologie>
				<Elément_posologie>
					<Type_événement_début>4</Type_événement_début>
					<Evénement_début>1</Evénement_début>
					<Quantité>
						<Nombre>6</Nombre>
						<Unité>h</Unité>
					</Quantité>
				</Elément_posologie>
				<Elément_posologie>
					<Type_événement_début>4</Type_événement_début>
					<Evénement_début>3</Evénement_début>
					<Quantité>
						<Nombre>4000.0</Nombre>
						<Unité>mg</Unité>
					</Quantité>
				</Elément_posologie>
			</Elément_prescr_pharm>
		</Compte_rendu_pharm>
	</M_Compte_rendu_analyse_pharm>
</Messages>

```

