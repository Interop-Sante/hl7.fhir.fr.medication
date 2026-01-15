# Prescription PN13 médicament simple en spécialité - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Prescription PN13 médicament simple en spécialité**

## Prescription PN13 médicament simple en spécialité

### Exemples PN13 de prescritpion en spécialité

#### PARACETAMOL MYLAN CONSEIL 1000 MG en cas de douleur

Cette prescription PN13 est traduite en FHIR dans l’instance [TradPN13FHIR-Presc-Paracetamol](https://interop-sante.github.io/hl7.fhir.fr.medication/main/ig/Bundle-TradPN13FHIR-Presc-Paracetamol.html).

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Messages Phast-id_message="10723" Phast-dh_émission="20220411164253" xmlns="http://www.phast.fr/SIPhII">
    <M_Prescription_médicaments>
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
        <Prescription>
            <Mode_communication>1</Mode_communication>
            <Dh_prescription>20220411164253</Dh_prescription>
            <Unité_resp_médicale Phast-nomenclature="LOCAL">2571</Unité_resp_médicale>
            <Rens_compl>
                <Code_rens_compl_1>1</Code_rens_compl_1>
                <Dh_enreg_rens_compl/>
                <Dh_rens_compl>20180621160510</Dh_rens_compl>
                <Valeur_rens_compl_1>
                    <Nombre>120.0</Nombre>
                    <Unité>kg</Unité>
                </Valeur_rens_compl_1>
            </Rens_compl>
            <Rens_compl>
                <Code_rens_compl_2>2</Code_rens_compl_2>
                <Dh_enreg_rens_compl/>
                <Dh_rens_compl>20181025110606</Dh_rens_compl>
                <Valeur_rens_compl_2>
                    <Nombre>189.0</Nombre>
                    <Unité>cm</Unité>
                </Valeur_rens_compl_2>
            </Rens_compl>
            <Elément_prescr_médic>
                <Id_élément_prescr>31626</Id_élément_prescr>
                <Type_élément_prescr>0</Type_élément_prescr>
                <Forme>29</Forme>
                <Libellé_élément_prescr>PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME  (Voie orale)
A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours </Libellé_élément_prescr>
                <Cré_arr_mod_val>C</Cré_arr_mod_val>
                <Urgent/>
                <Fourniture>1</Fourniture>
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
                <Commentaire>Test paracetamol 2 (à la demande)</Commentaire>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>3400890006262</Code_composant_1>
                    <Libellé_composant>PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME</Libellé_composant>
                    <Quantité_composant_prescrite>
                        <Nombre>1000.0</Nombre>
                        <Unité>mg</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
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
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>

```

#### DOLIPRANE 1000 MG 3x/jour

Cette prescription PN13 est traduite en FHIR:

* dans l’instance [TradPN13FHIR-Presc-DOLIPRANE](https://interop-sante.github.io/hl7.fhir.fr.medication/main/ig/Bundle-TradPN13FHIR-Presc-DOLIPRANE.html) sans interpétation de la terminologie locale de fréquence;
* dans l’instance [TradPN13FHIR-Presc-DOLIPRANE-Interpret](https://interop-sante.github.io/hl7.fhir.fr.medication/main/ig/Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.html) avec interprétation de la terminologie locale de fréquence.

```
<?xml version="1.0" encoding="UTF-8"?>
<Messages xsi:schemaLocation="http://www.phast.fr/SIPhII PN13-IS.4.0.34.xsd" xmlns="http://www.phast.fr/SIPhII" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Phast-version="1.1.1">
    <M_Prescription_médicaments>
        <Patient>
            <Ipp>123456</Ipp>
        </Patient>
        <Séjour>
            <Id_séjour>234567</Id_séjour>
        </Séjour>
        <Prescription>
            <Mode_communication>2</Mode_communication>
            <Dh_prescription>20071227103300</Dh_prescription>
            <Unité_resp_médicale Phast-nomenclature="CH_Bihorel-UF">3456</Unité_resp_médicale>
            <Elément_prescr_médic>
                <Id_élément_prescr>id1</Id_élément_prescr>
                <Libellé_élément_prescr>Doliprane cpr 3x1g/j x 3j</Libellé_élément_prescr>
                <Cré_arr_mod_val>C</Cré_arr_mod_val>
                <Fourniture>1</Fourniture>
                <Id_prescripteur>345678</Id_prescripteur>
                <Voie_administration>54</Voie_administration>
                <Dh_début>20071228070000</Dh_début>
                <Dh_fin>20071230180000</Dh_fin>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9216902</Code_composant_1>
                    <Libellé_composant>DOLIPRANE 1 000 mg, cpr efferv</Libellé_composant>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>cpr</Unité>
                    </Quantité_composant_prescrite>
                </Composant_prescrit>
                <Elément_posologie>
                    <Fréquence Phast-nomenclature="CH_Bihorel-Fréquence" Phast-signification="Trois fois par jour">3</Fréquence>
                    <Quantité>
                        <Nombre>1</Nombre>
                        <Unité>cpr</Unité>
                    </Quantité>
                </Elément_posologie>
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>

```

#### METFORMINE alternativement GLICLAZIDE

Cette prescription PN13 est traduite en FHIR dans l’instance [Trad-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](https://interop-sante.github.io/hl7.fhir.fr.medication/RelationEtMedicamentsVirtuels/ig/Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.html).

```
<?xml version="1.0" encoding="ISO-8859-1"?>
<Messages Phast-id_message="10543744" Phast-dh_émission="20250502145543" xmlns="http://www.phast.fr/SIPhII">
	<M_Prescription_médicaments>
		<Patient>
			<Ipp>6032486</Ipp>
			<Nom_usuel>ARASGAIN</Nom_usuel>
			<Nom_naissance>CUIMEANACH</Nom_naissance>
			<Premier_prénom>MARSALI</Premier_prénom>
			<Prénoms>MARSALI MORAG MAIREAD</Prénoms>
			<Date_naissance>19890102000000</Date_naissance>
			<Lieu_naissance>29134</Lieu_naissance>
			<Sexe>F</Sexe>
			<DI>1.2.250.1.507454354.43654.2346659</DI>
			<INS>289062913400149</INS>
			<INS_OID>1.2.250.1.213.1.4.8</INS_OID>
			<Statut_idpat>3</Statut_idpat>
		</Patient>
		<Séjour>
			<Id_séjour>765093464568</Id_séjour>
		</Séjour>
		<Prescription>
			<Mode_communication>1</Mode_communication>
			<Dh_prescription>20250502144844</Dh_prescription>
			<Unité_hébergement Phast-nomenclature="HM_UF">603</Unité_hébergement>
			<Unité_resp_médicale Phast-nomenclature="HM_UF">506</Unité_resp_médicale>
			<Elément_prescr_médic>
				<Id_élément_prescr>20250502144844569</Id_élément_prescr>
				<Type_élément_prescr Phast-nomenclature="SIPh_TypeEltPLA">1</Type_élément_prescr>
				<Libellé_élément_prescr>Par voie orale : METFORMINE 1000MG 0,5 comprimé 2 fois par jour avec les repas -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00</Libellé_élément_prescr>
				<Fourniture>1</Fourniture>
				<Id_prescripteur>899999999999</Id_prescripteur>
				<Voie_administration>54</Voie_administration>
				<Dh_début>20250502190000</Dh_début>
				<Dh_fin>20250531185959</Dh_fin>
				<Composant_prescrit>
					<Type_composant_1>1</Type_composant_1>
					<Code_composant_1>3400890020275</Code_composant_1>
					<Libellé_composant>METFORMINE ACC 1000MG CPR</Libellé_composant>
				</Composant_prescrit>
				<Elément_posologie>
					<Fréquence_structurée>
                        <Frq_échelle>4</Frq_échelle>
                        <Frq_multiplicité>2</Frq_multiplicité>
                        <Frq_libellé>Deux fois par jour</Frq_libellé>
                    </Fréquence_structurée>
					<Type_événement_début>2</Type_événement_début>
					<Evt_structuré_début>
						<Evénement_structuré>
							<Evt_objet>
								<Evt_nature>2</Evt_nature>
								<Evt_typedeDonnée>2</Evt_typedeDonnée>
								<Evt_activité>
									<Evt_activité_code>1</Evt_activité_code>
								</Evt_activité>
							</Evt_objet>
							<Evt_opérateur>5</Evt_opérateur>
							<Evt_libellé>Avec le repas</Evt_libellé>
						</Evénement_structuré>
					</Evt_structuré_début>
					<Type_événement2_début>3</Type_événement2_début>
					<Evénement2_début>Sans intolérance digestive au METFORMINE</Evénement2_début>
					<Quantité>
						<Nombre>0.5</Nombre>
						<Unité>cpr</Unité>
					</Quantité>
				</Elément_posologie>
				<Elément_lié>
					<Id_élément_lié>20250502144844570</Id_élément_lié>
					<Type_liaison_élément>3</Type_liaison_élément>
				</Elément_lié>
			</Elément_prescr_médic>
			<Elément_prescr_médic>
				<Id_élément_prescr>20250502144844570</Id_élément_prescr>
				<Type_élément_prescr Phast-nomenclature="SIPh_TypeEltPLA">1</Type_élément_prescr>
				<Libellé_élément_prescr>Par voie orale : GLICLAZIDE 30MG 3 comprimés au petit déjeuner -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00</Libellé_élément_prescr>
				<Fourniture>1</Fourniture>
				<Id_prescripteur>899999999999</Id_prescripteur>
				<Voie_administration>54</Voie_administration>
				<Dh_début>20250502190000</Dh_début>
				<Dh_fin>20250531185959</Dh_fin>
				<Composant_prescrit>
					<Type_composant_1>1</Type_composant_1>
					<Code_composant_1>3400893541364</Code_composant_1>
					<Libellé_composant>GLICLAZIDE ARW 30MG CPR LM</Libellé_composant>
				</Composant_prescrit>
				<Elément_posologie>
					<Type_événement_début>2</Type_événement_début>
					<Evt_structuré_début>
						<Evénement_structuré>
							<Evt_objet>
								<Evt_nature>2</Evt_nature>
								<Evt_typedeDonnée>2</Evt_typedeDonnée>
								<Evt_activité>
									<Evt_activité_code>4</Evt_activité_code>
								</Evt_activité>
							</Evt_objet>
							<Evt_opérateur>5</Evt_opérateur>
							<Evt_libellé>Au petit déjeuner</Evt_libellé>
						</Evénement_structuré>
					</Evt_structuré_début>
					<Type_événement2_début>3</Type_événement2_début>
					<Evénement2_début>En cas d'intolérance digestive au METFORMINE</Evénement2_début>
					<Quantité>
						<Nombre>3</Nombre>
						<Unité>cpr</Unité>
					</Quantité>
				</Elément_posologie>
				<Elément_lié>
					<Id_élément_lié>20250502144844569</Id_élément_lié>
					<Type_liaison_élément>3</Type_liaison_élément>
				</Elément_lié>
			</Elément_prescr_médic>
		</Prescription>
	</M_Prescription_médicaments>
</Messages>

```

