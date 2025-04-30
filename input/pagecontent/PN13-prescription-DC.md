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
