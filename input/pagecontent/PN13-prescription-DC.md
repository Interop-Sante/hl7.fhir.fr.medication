# Exemples PN13 de prescritpion en DC

## Paracétamol en cas de douleur

Cette prescription PN13 est traduite en FHIR dans l'instance [TradPN13FHIR-Presc-Paracetamol-SiDouleur](https://interop-sante.github.io/hl7.fhir.fr.medication/FinalisationMappingPosologie/ig/Bundle-bundle-DC-2.html)

```xml
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
                <Libellé_élément_prescr>PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours </Libellé_élément_prescr>
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
                <Commentaire>Test paracetamol DC 2 (à la demande)</Commentaire>
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
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>
```

## Morphine en PCA (Patient Controled Analgesiae)

Cette prescription PN13 est traduite en FHIR dans l'instance [TradPN13FHIR-Presc-Morphine-PCA].

``` xml
<?xml version="1.0" encoding="ISO-8859-1"?>
<Messages Phast-id_message="10543745" Phast-dh_émission="20250507153801" xmlns="http://www.phast.fr/SIPhII">
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
			<Dh_prescription>20250507153500</Dh_prescription>
			<Unité_hébergement Phast-nomenclature="HM_UF">603</Unité_hébergement>
			<Unité_resp_médicale Phast-nomenclature="HM_UF">506</Unité_resp_médicale>
			<Elément_prescr_médic>
				<Id_élément_prescr>202500507153500547</Id_élément_prescr>
				<Type_élément_prescr Phast-nomenclature="SIPh_TypeEltPLA">3</Type_élément_prescr>
				<Libellé_élément_prescr>Par voie intraveineuse : PCA Morphine 120 mg/24h Bolus 10 mg Période refractaire 2h -- À partir du 07/05/2025 à 17:30 jusqu'au 11/05/2025 à 17h30</Libellé_élément_prescr>
				<Fourniture>1</Fourniture>
				<Id_prescripteur>899999999999</Id_prescripteur>
				<Voie_administration>49</Voie_administration>
				<Dh_début>20250507173000</Dh_début>
				<Dh_fin>20250511173000</Dh_fin>
				<Composant_prescrit>
					<Type_composant_13>13</Type_composant_13>
					<Code_composant_13>100000091372</Code_composant_13>
					<Libellé_composant>morphine</Libellé_composant>
				</Composant_prescrit>
				<Elément_posologie>
					<Type_événement_début>1</Type_événement_début>
					<Débit>
						<Nombre>5</Nombre>
						<Unité>mg/h</Unité>
					</Débit>
				</Elément_posologie>
				<Elément_posologie>
					<Type_événement_début>3</Type_événement_début>
					<Evénement_début>bolus</Evénement_début>
					<Quantité>
						<Nombre>10</Nombre>
						<Unité>mg</Unité>
					</Quantité>
				</Elément_posologie>
				<Elément_posologie>
					<Type_événement_début>4</Type_événement_début>
					<Evénement_début>1</Evénement_début>
					<Quantité>
						<Nombre>2</Nombre>
						<Unité>h</Unité>
					</Quantité>
				</Elément_posologie>
			</Elément_prescr_médic>
		</Prescription>
	</M_Prescription_médicaments>
</Messages>
```
