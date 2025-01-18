# Exemples PN13 de prescritpion en spécialité

## UCD-2 (PARACETAMOL MYLAN CONSEIL 1000 MG en cas de douleur)

Cette prescription PN13 est traduite en FHIR dans l'instance [bundle-UDC-2]($bundle-UCD-2). Elle utilise la possibilité PN13 de référencer une dose définie au niveau du médicament. La validité de cette traduction est en cours d'évaluation.

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
                <Indication>Si douleur</Indication>
                <Commentaire>Test paracetamol 2 (à la demande)</Commentaire>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>3400890006262</Code_composant_1>
                    <Libellé_composant>PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME</Libellé_composant>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
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
                        <Nombre>1000</Nombre>
                        <Unité>dose</Unité>
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
                        <Nombre>4000</Nombre>
                        <Unité>dose</Unité>
                    </Quantité>
                </Elément_posologie>
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>
```

## UCD-2Bis (PARACETAMOL MYLAN CONSEIL 1000 MG en cas de douleur)

Cette prescription PN13 est traduite en FHIR dans l'instance [bundle-UDC-2Bis]($bundle-UCD-2Bis).

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

## 01-34-01 (Doliprane 3x/j)

Cette prescription PN13 est traduite en FHIR dans l'instance [Bundle-Exemple-01-34-01]($Bundle-Exemple-01-34-01) sans interpétation de la terminologie locale de fréquence et dans l'instance [Bundle-Exemple-01-34-01-Interpret]($Bundle-Exemple-01-34-01-Interpret) avec interprétation de la terminologie locale de fréquence.

```xml
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
