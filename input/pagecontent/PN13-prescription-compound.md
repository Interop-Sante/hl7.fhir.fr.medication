# Exemples PN13 de prescritpion de médicaments composés

## Compound-6166 (perfusion sur 12h par jour)

Cette prescription PN13 est traduite en FHIR dans l'instance [bundle-Compound-6166](bundle-Compound-6166)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Messages>
    <M_Prescription_médicaments>
        <Patient>
            <Ipp>123456789123</Ipp>
            <Nom_usuel>HENRY</Nom_usuel>
            <Nom_naissance />
            <Prénoms>Jean</Prénoms>
            <Date_naissance>20000101</Date_naissance>
            <Sexe>M</Sexe>
            <DI />
        </Patient>
        <Séjour>
            <Id_séjour>3</Id_séjour>
        </Séjour>
        <Prescription>
            <Dh_prescription>2023050311300000</Dh_prescription>
            <Commentaire />
            <Rens_compl>
                <Dh_enreg_rens_compl />
                <Code_rens_compl>1</Code_rens_compl>
                <Valeur_rens_compl>
                    <Nombre>79</Nombre>
                    <Unité>kg</Unité>
                </Valeur_rens_compl>
            </Rens_compl>
            <Rens_compl>
                <Dh_enreg_rens_compl />
                <Code_rens_compl>5</Code_rens_compl>
                <Valeur_rens_compl>
                    <Nombre>0</Nombre>
                    <Unité>µmol/l</Unité>
                </Valeur_rens_compl>
            </Rens_compl>
            <Rens_compl>
                <Dh_enreg_rens_compl />
                <Code_rens_compl>2</Code_rens_compl>
                <Valeur_rens_compl>
                    <Nombre>181</Nombre>
                    <Unité>cm</Unité>
                </Valeur_rens_compl>
            </Rens_compl>
            <Elément_prescr_médic>
                <Id_élément_prescr>6166</Id_élément_prescr>
                <Cré_arr_mod_val>C</Cré_arr_mod_val>
                <Libellé_élément_prescr>: 1 préparation en continu sur 12h00 par jour</Libellé_élément_prescr>
                <Identification_prescripteur>
                    <Nom_usage>DUPONT</Nom_usage>
                    <Prénom_usage>Charles</Prénom_usage>
                    <Prénoms>Charles</Prénoms>
                    <Identifiant>12345678910</Identifiant>
                </Identification_prescripteur>
                <Fourniture>0</Fourniture>
                <Urgent>0</Urgent>
                <Voie_administration>49</Voie_administration>
                <Dh_début>2023050310000000</Dh_début>
                <Dh_fin />
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9406117</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>amp</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>NUTRYELT, sol à diluer pr perf, amp 10 mL</Libellé_composant>
                </Composant_prescrit>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9283471</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>2</Nombre>
                        <Unité>amp</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>POTASSIUM CHLORURE 1 g (10% Labo COOPER), sol à diluer pr perf, amp 10 mL</Libellé_composant>
                </Composant_prescrit>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9261423</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>amp</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>MAGNESIUM CHLORURE 1 g (Labo LAVOISIER), sol inj, IV, amp 10 mL</Libellé_composant>
                </Composant_prescrit>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9314941</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>flac</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>LEVOFOLINATE DE CALCIUM 25 mg (Labo ZENTIVA), sol inj, IM IV, flac 2.5 mL</Libellé_composant>
                </Composant_prescrit>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9134328</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>flac</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>CERNEVIT, pdr pr sol inj ou pr perf</Libellé_composant>
                </Composant_prescrit>
                <Composant_prescrit>
                    <Type_composant_1>1</Type_composant_1>
                    <Code_composant_1>9178047</Code_composant_1>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>poche</Unité>
                    </Quantité_composant_prescrite>
                    <Non_substituable>0</Non_substituable>
                    <Commentaire />
                    <Libellé_composant>SODIUM CHLORURE 0.9% (Labo B BRAUN), sol pr perf, poche 500 mL (ECOFLAC)</Libellé_composant>
                </Composant_prescrit>
                <Elément_posologie>
                    <Fréquence_structurée>
                        <Frq_échelle>3</Frq_échelle>
                        <Frq_durée>12</Frq_durée>
                        <Frq_multiplicité />
                        <Frq_libellé>Toutes les 12 heures</Frq_libellé>
                    </Fréquence_structurée>
                    <Int_temps_év_début>
                        <Nombre>600</Nombre>
                        <Unité>mn</Unité>
                    </Int_temps_év_début>
                    <Type_événement_début>1</Type_événement_début>
                    <Durée>
                        <Nombre>720</Nombre>
                        <Unité>min</Unité>
                    </Durée>
                    <Quantité>
                        <Nombre>1</Nombre>
                        <Unité>dose</Unité>
                    </Quantité>
                </Elément_posologie>
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>
```
