# Firm R&D data

This document repertories the knowledge about the data base for firm R&D issued from the MESRI survey.

## Methodology

Every observation is ponderated, to find back the value of the time we must divide the observed value by the ponderation used for the survey.

|Year|Currency|Perimeter| Size| Limits|
|----|----|----|----|----|
|2000|Frank|All companies with at leat one (equiv.) full time researcher | 2802 companies| Hard to determine the number of companies engaged in research, but the volume of R&D is reliable |
|2000|Frank|All companies with at leat one (equiv.) full time researcher | 2802 companies|

## Data dictionnary 

Fichier BASEN

| **Variable Name** | **Description (English)** |
|--------------------|----------------------------|
| **ADRESSE** | Street number and name |
| **ANNEE** | Survey year (4-character string) |
| **APE** | Company’s sector (NAF700, 4-character string) |
| **APE_NACE2** | Company’s sector (NACE 2 digits) |
| **APE_NACE3** | Company’s sector (NACE 3 digits) |
| **APE_NACE4** | Company’s sector (NACE 4 digits); renamed from APE_NACE |
| **APE_NES16** | Company’s sector (NES 16 classification); added in 2000 |
| **APE_NES36** | Company’s sector (NES 36 classification); added in 2000 |
| **APE_NES114** | Company’s sector (NES 700 classification) |
| **BIOTECH** | Biotech origin indicator (1–4 depending on data source; see description) |
| **BREVAM** | Number of U.S. patents filed in 2000 from R&D activities |
| **BREVAUT** | Number of other patents filed in 2000 from R&D activities |
| **BREVEURO** | Number of European patents filed in 2000 from R&D activities |
| **BREVFR** | Number of French patents filed in 2000 from R&D activities |
| **BUDGETOT** | Total R&D budget = DIRD + DERD |
| **CAEXP** | Export turnover (set to 0 for small R&D questionnaires) |
| **CAHT** | Company turnover; may include group-level turnover when relevant |
| **CAT_ENTREP** | Company category (1-character code) |
| **CENTRE_REC** | Research center within company (TRUE/FALSE) |
| **CHERCHEUR** | Number of researchers (full-time equivalent) |
| **CHERCH_PP** | Number of researchers (headcount, non-rounded) |
| **CH_FEM_PP** | Female researchers (headcount, 2 decimal places) |
| **CH_FEM_P2** | Female researchers (headcount, rounded to nearest integer) |
| **CH_HOM_PP** | Male researchers (headcount, 2 decimal places) |
| **CH_HOM_P2** | Male researchers (headcount, rounded to nearest integer) |
| **CODE_COMP** | Comparison code relative to previous year |
| **COMMUNE** | Address complement (street, industrial zone, etc.) |
| **COMPTAGE** | Numeric variable with constant value 1 |
| **DERD** | R&D outsourced to external partners |
| **DESTINAT** | Recipient name and position |
| **DIRD** | Internal R&D expenditure |
| **D_COURANTE** | Current R&D expenditure |
| **D_CAPITAL** | Capital R&D expenditure |
| **EFFECTIF** | Total company workforce |
| **EFFECT_RD** | Workforce dedicated to R&D (full-time equivalent) |
| **EFFRD_PP** | R&D staff (headcount, non-rounded) |
| **EFF_FEM_PP** | Female R&D staff (headcount, non-rounded) |
| **EFF_FEM_P2** | Female R&D staff (headcount, rounded) |
| **EFF_HOM_PP** | Male R&D staff (headcount, non-rounded) |
| **EFF_HOM_P2** | Male R&D staff (headcount, rounded) |
| **ENTREPRISE** | Company name |
| **ENTR_PUBLI** | Public company indicator (1/2 = yes; 0 or blank = no) |
| **EURO** | Declaration made in euros (-1 = in euros) |
| **FRAIS_GEN** | Overhead costs (non-salary R&D current expenses) |
| **FINANC_PRI** | Private funding for R&D (DIRD + DERD from private sources) |
| **FINANC_PRO** | Self-funding of R&D by the company |
| **FINANC_PUB** | Public funding of R&D (includes ISBL since 1998) |
| **GROUPE_ETR** | Foreign country code of parent group (2 characters) |
| **GROUPE_FRA** | French group code (2 characters) |
| **INNOPROC** | Company innovated in processes (TRUE/FALSE) |
| **INNOPROD** | Company innovated in products (TRUE/FALSE) |
| **NATION1** | Country code of 2nd or 3rd shareholder |
| **NATION2** | Country code of 3rd or 4th shareholder |
| **NB_REPONSE** | Number of company branches |
| **NO_REF** | Internal reference number for R&D survey |
| **PBIOTECH** | Share of R&D in biotechnology (%) |
| **PCENT1** | % of company owned by country in NATION1 |
| **PCENT2** | % of company owned by country in NATION2 |
| **PCENT3** | % of company owned by country in NATION3 |
| **PCENT_ETR** | % of company owned by foreign group (GROUPE_ETR) |
| **PCENT_FRA** | % of company owned by French group (GROUPE_FRA) |
| **PENVIR** | % of R&D in environmental domain |
| **PHONE** | Contact phone number |
| **PINFORMAT** | % of R&D in information technology |
| **PMATER** | % of R&D in new materials |
| **POND** | Weighting coefficient |
| **PSHS** | % of R&D in social sciences and humanities |
| **PTT** | Company postal code (5-character string) |
| **QS_NR** | Type of questionnaire: * = QS, $ = repeated, blank = QG |
| **REGION** | Region code based on postal code (2-character string) |
| **REM_CS** | Compensation of research personnel |
| **SECT_PUB** | Aggregated 25-sector R&D classification (3-character string) |
| **SECT_RECH** | Research sector (NAF700, possibly truncated) |
| **SIREN** | Company SIREN identifier (9-character string) |
| **TOTBREV** | Total number of patents in 2000 = BREVAM + BREVAUT + BREVEURO + BREVFR |
| **VILLE** | City name |
| **chercheurNP** | Number of researchers (unweighted, full-time equivalent) |
| **chercv10** | Number of researchers (unweighted, full-time equivalent; duplicate of above) |

Fichier BRAN

| **Variable Name** | **Description (English)** |
|--------------------|----------------------------|
| **ACT_GR** | DERD to companies located in France belonging to the same group and the same industry sector |
| **ACT_GR_FP** | DERD to companies in France within the same group and sector, financed by public funds |
| **ADMINIS** | Number of administrative staff dedicated to research (full-time equivalent) |
| **AMORT** | Depreciation of capital expenditures for research (D_CAPITAL) |
| **APE** | Company’s industry classification (NAF 700, 4 characters) |
| **AUTRES** | DERD to companies in France outside the same group (AUT_ACT + AUT_ENT) |
| **AUTRES_FP** | DERD to French companies outside the same group, financed by public funds (AUT_ACT_FP + AUT_ENT_FP) |
| **AUT_ACT** | DERD to French companies outside the same group but in the same industry sector |
| **AUT_ACT_FP** | DERD to French companies outside the same group but in the same sector, financed by public funds |
| **AUT_ENT** | DERD to French companies outside the same group and not in the same sector |
| **AUT_ENT_FP** | DERD to French companies outside the same group and sector, financed by public funds |
| **AUT_ETR** | DERD to foreign companies not belonging to the same group |
| **AUT_ETR_FP** | DERD to foreign companies not belonging to the same group, financed by public funds |
| **AUT_GR** | DERD to French companies in the same group but in a different sector |
| **AUT_GR_FP** | DERD to French companies in the same group but different sector, financed by public funds |
| **AUT_OPU_FP** | DERD to other public-sector bodies (excluding education, CEA, CNES, CNRS, and ISBL) financed by public funds |
| **AUT_ORG_PU** | DERD to other public-sector bodies (excluding education, CEA, CNES, CNRS, and ISBL) |
| **AV_ANVAR** | Resources from ANVAR as repayable advances |
| **AV_AUT_IND** | Resources from the Ministry of Industry (excluding SERICS) as repayable advances |
| **AV_SERICS** | Resources from SERICS (Ministry of Industry) as repayable advances |
| **BUDGETOT** | Total research budget (DIRD + DERD) |
| **CAEXP_BRAN** | Export turnover in the company’s research branch |
| **CAHT_BRANC** | Turnover in the company’s research branch |
| **CAT_ENTREP** | Company category (1-character code) |
| **CEA** | DERD entrusted to the CEA |
| **CEA_FP** | DERD entrusted to the CEA and financed by public funds |
| **CHERCHEUR** | Number of researchers (full-time equivalent) |
| **CHERCH_PP** | Number of researchers (headcount, non-rounded) |
| **CH_FEM_PP** | Female researchers (headcount, two decimals) |
| **CH_FEM_P2** | Female researchers (rounded headcount) |
| **CH_HOM_PP** | Male researchers (headcount, two decimals) |
| **CH_HOM_P2** | Male researchers (rounded headcount) |
| **CNES** | DERD entrusted to the CNES |
| **CNES_FP** | DERD entrusted to the CNES and financed by public funds |
| **CNRS** | DERD entrusted to the CNRS |
| **CNRS_FP** | DERD entrusted to the CNRS and financed by public funds |
| **CODE_PUB** | Research branch code used in Ministry publications (derived from CODE_RECH, 25 positions) |
| **CODE_RECH** | Research branch of the company (NAF700-based, sometimes truncated) |
| **COMPTAGE** | Numeric variable equal to 1 |
| **DERD** | R&D subcontracted to external partners |
| **DERD_FP** | R&D subcontracted to external partners and financed by public funds |
| **DEVEL** | DIRD devoted to experimental development |
| **DIRD** | Internal R&D expenditure |
| **D_CAPITAL** | Capital expenditure on R&D (DIRD) |
| **D_COURANTE** | Current R&D expenditure |
| **EFFECTIF** | Total company workforce |
| **EFFECTNP** | Company workforce (unweighted) |
| **EFFECT_RD** | Workforce devoted to R&D (full-time equivalent) |
| **EFFEC_BRAN** | Workforce employed in the research branch (includes production, etc.) |
| **EFFRD_PP** | R&D workforce (headcount, non-rounded) |
| **EFF_FEM_PP** | Female R&D workforce (headcount) |
| **EFF_FEM_P2** | Female R&D workforce (rounded headcount) |
| **EFF_HOM_PP** | Male R&D workforce (headcount) |
| **EFF_HOM_P2** | Male R&D workforce (rounded headcount) |
| **ENS_SUP** | DERD entrusted to higher education institutions (universities, grandes écoles, etc.) |
| **ENS_SUP_FP** | DERD entrusted to higher education and financed by public funds |
| **ENTREP** | DERD entrusted to French companies (ACT_GR + AUT_GR + AUT_ACT + AUT_ENT + ORG_PRO) |
| **ENTREPRISE** | Company name (42-character string) |
| **ENTREP_FP** | DERD entrusted to French companies, financed by public funds |
| **ENTR_PUBLI** | Public enterprise indicator (1-character code) |
| **ENT_ETR** | DERD entrusted to foreign companies (ETR_GR + AUT_ETR) |
| **ENT_ETR_FP** | DERD entrusted to foreign companies, financed by public funds |
| **ENT_GR** | DERD entrusted to French companies in the same group (ACT_GR + AUT_GR) |
| **ENT_GR_FP** | DERD entrusted to French companies in the same group, financed by public funds |
| **ETRANGER** | DERD entrusted abroad (ETR_GR + AUT_ETR + ORG_INT + ORG_ETR) |
| **ETRAN_FP** | DERD entrusted abroad, financed by public funds |
| **ETR_GR** | DERD entrusted abroad to companies in the same group |
| **ETR_GR_FP** | DERD entrusted abroad to companies in the same group, financed by public funds |
| **FINANC_PRI** | Private funding of R&D (DIRD + DERD) from non-public partners |
| **FINANC_PRO** | Company self-financing of R&D (DIRD + DERD − (FINANC_PUB + FINANC_PRI)) |
| **FINANC_PUB** | Public funding of R&D (DIRD + DERD) |
| **FRAIS_GEN** | Other current expenses of DIRD (supplies, overheads, etc.) |
| **GROUPE_ETR** | Country code of foreign parent company (2 characters) |
| **GROUPE_FRA** | Code of the French parent group (2 characters) |
| **ISBL** | DERD entrusted to non-profit institutions within the public sector (excluding technical centers) |
| **ISBL_FP** | Same as ISBL, financed by public funds |
| **LOGICIEL** | Capital expenditure for R&D in software purchases |
| **MATERIEL** | Capital expenditure for R&D in equipment purchases |
| **MOD_FIN** | Code for modified responses on unallocated public funding (regions, CIFRE, FRT, etc.) |
| **NO_REF** | Internal R&D survey reference number (8 characters) |
| **NO_REPONSE** | Branch number within the company (1 = first branch, 2 = second, etc.) |
| **OCDE** | OECD research branch classification (derived from CODE_RECH) |
| **ONERA** | DERD entrusted to ONERA (public research organization) |
| **ONERA_FP** | DERD entrusted to ONERA, financed by public funds |
| **ORG_ETR** | DERD entrusted to foreign organizations |
| **ORG_ETR_FP** | DERD entrusted to foreign organizations, financed by public funds |
| **ORG_INT** | DERD entrusted to international organizations |
| **ORG_INT_FP** | DERD entrusted to international organizations, financed by public funds |
| **ORG_PRO** | DERD entrusted to technical centers (professional organizations) |
| **ORG_PRO_FP** | DERD entrusted to technical centers, financed by public funds |
| **ORG_PUB** | DERD performed by public research bodies (CEA + CNES + CNRS + AUT_ORG_PU + ONERA) |
| **ORG_PUB_FP** | Same as ORG_PUB, financed by public funds |
| **OUVRIER** | Number of workers engaged in research (full-time equivalent) |
| **POND** | Weighting coefficient (rounded to 2 decimals) |
| **PONDv10** | Weighting coefficient (numeric, 8 digits) |
| **QS_NR** | Type of questionnaire (* = QS, $ = duplicated, blank = QG) |
| **RBT_AEROCI** | Repayment of SPAE advances (replaced in 2000 by RBT_AV) |
| **RBT_AV** | Total repayment of advances (ANVAR, SPAE, etc.) |
| **RECH_114** | Research branch in NES114 classification (3 characters) |
| **RECH_APP** | DIRD devoted to applied research |
| **RECH_FOND** | DIRD devoted to basic research |
| **REM_CS** | Remuneration of research personnel |
| **RESS1–4** | Resources from public organizations indicated in R_CODE1–4 |
| **R_ADEME** | Resources from ADEME (public funder) |
| **R_ANVAR** | Resources from ANVAR (public funder) |
| **R_AUT_DEF** | Resources from other Defense Ministry departments (public funder) |
| **R_AUT_ENS** | Resources from other higher education institutions (public funder) |
| **R_AUT_ENT** | Resources from French companies outside the same group |
| **R_AUT_ETR** | Resources from foreign companies outside the same group |
| **R_AUT_IND** | Resources from the Ministry of Industry (excluding SERICS, public funder) |
| **R_AUT_OPU** | Resources from other public organizations (public funder) |
| **R_AUT_RECH** | Resources from other Research Ministry services (public funder) |
| **R_CEA** | Resources from CEA (civil, public funder) |
| **R_CEA_DAM** | Resources from CEA (military, public funder) |
| **R_CEE** | Resources from the European Community (foreign sector) |
| **R_CIFRE** | Resources from CIFRE or CORTECHS (public funder) |
| **R_CNES** | Resources from CNES (public funder) |
| **R_CNRS** | Resources from CNRS (public funder) |
| **R_CODE1–4** | Codes of public funders corresponding to RESS1–4 |
| **R_DGA** | Resources from the Directorate General for Armaments (public funder) |
| **R_DPAC** | Resources from DPAC (public funder) |
| **R_DSA** | Resources from Directorate of Weapon Systems (public funder) |
| **R_ENS_SUP** | Resources from higher education (public funder) |
| **R_ENTREP** | Resources from French companies (R_ENT_GR + R_INST_GR + R_AUT_ENT + R_ORG_PRO) |
| **R_ENT_ETR** | Resources from foreign companies (R_ETR_GR + R_INST_ETR + R_AUT_ETR) |
| **R_ENT_GR** | Resources from French companies in the same group (contract-based) |
| **R_ETRANGER** | Resources from foreign entities (R_ENT_ETR + R_CEE + R_ORG_INT + R_ORG_ETR) |
| **R_ETR_GR** | Resources from foreign companies in the same group (contract-based) |
| **R_FRT** | Resources from the Technological Research Fund or National Science Fund (public funder) |
| **R_INRIA** | Resources from INRIA (public funder) |
| **R_INST_ETR** | Resources from foreign group companies (non-contract) |
| **R_INST_GR** | Resources from French group companies (non-contract) |
| **R_ISBL** | Resources from non-profit associations (public funder) |
| **R_ONERA** | Resources from ONERA (public funder) |
| **R_ORG_ETR** | Resources from foreign organizations (foreign sector) |
| **R_ORG_INT** | Resources from international organizations (foreign sector) |
| **R_ORG_PRO** | Resources from professional technical centers (French sector) |
| **R_REGION** | Resources from regional governments (public funder) |
| **R_SERICS** | Resources from SERICS (Ministry of Industry, public funder) |
| **R_TOT_DEF** | Total resources from the Defense Ministry (public funder) |
| **R_TOT_ENS** | Total resources from the Ministry of Education (public funder) |
| **R_TOT_IND** | Total resources from the Ministry of Industry (public funder) |
| **R_TOT_RECH** | Total resources from the Ministry of Research (public funder) |
| **SECT_PUB** | Aggregated research sector classification (25 positions, derived from SECT_RECH) |
| **SIREN** | Company SIREN identifier (9-character string) |
| **TECHNICIEN** | Number of technicians engaged in research (full-time equivalent) |
| **TERRAINS** | Land purchases for research (capital expenditures in DIRD) |
| **TIC** | Research in the ICT sector (indicator = 1 if yes) |
| **TOT_AR_PUB** | Total resources from other ministries (agriculture, housing, etc.; RESS1 + RESS2 + RESS3 + RESS4) |

Fichier BREG

| **Variable Name** | **Description (English)** |
|--------------------|----------------------------|
| **ADMINIS** | Number of administrative staff dedicated to research (full-time equivalent) |
| **ANNEE** | Survey year (4-character string) |
| **APE** | Company’s industry classification (NAF 700, 4 characters) |
| **CAEXP** | Company’s export turnover |
| **CAHT** | Company’s total turnover |
| **CHERCHEUR** | Number of researchers (full-time equivalent) in the region |
| **CODE_PUB** | Research branch code used in Ministry publications (based on CODE_RECH, 25 positions) |
| **CODE_RECH** | Research branch of the company in the region (NAF700-based, sometimes truncated) |
| **DEPART** | Department code where the company conducts research (first two digits of postal code, e.g., 75 = Paris) |
| **DIRD** | Internal R&D expenditure in the region for the activity branch (CODE_RECH) |
| **D_CAPITAL** | Capital R&D expenditure (part of DIRD) |
| **D_COURANTE** | Current R&D expenditure |
| **EFFECTIF** | Total company workforce |
| **EFFECT_RD** | Workforce devoted to R&D in the region (full-time equivalent) |
| **ENTREPRISE** | Company name (42-character string) |
| **GROUPE_ETR** | Country code of foreign parent company (2-character string) |
| **GROUPE_FRA** | Code of the French parent group (2-character string) |
| **NO_REF** | Internal reference number of the R&D survey (8-character string) |
| **NO_REPONSE** | Research branch number (1 = first branch, 2 = second, etc.) |
| **OUVRIER** | Number of workers engaged in research (full-time equivalent) in the region |
| **POND** | Weighting coefficient |
| **QS_NR** | Type of questionnaire (* = QS, $ = repeated, blank = QG) |
| **REGION** | Region code corresponding to the department (DEPART) where research is conducted (2-character string) |
| **TECHNICIEN** | Number of technicians engaged in research (full-time equivalent) in the region |

## Nomenclature

Variables finishing by :
- _PP means "personnes physiques" (Physical Person)
- (char x) means character variable of length "x"