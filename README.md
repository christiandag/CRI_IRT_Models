# CRI-IRT Model Scripts and Data

This repository contains R scripts and datasets used in the research paper:

**"Measuring Innovation Potential in Ecuadorian ICT Companies: Development and Application of the CRI-IRT Model"**

## Overview

This repository provides resources for building and analyzing Item Response Theory (IRT) models based on the CRI (Capabilities, Results, Impacts) framework. The included data and scripts were used to evaluate the innovation potential of organizations in Ecuador.

### Contents
- **R Scripts**: Scripts to analyze specific factors of the CRI model.
- **Datasets**: Data collected from national multisectoral and ICT sector samples.

---

## Repository Structure

### Datasets
1. **`cri_data_46items_tech.csv`**:
   - Responses to the CRI questionnaire from 33 ICT organizations in Quito, Ecuador.
2. **`cri_data_46items_without_tech_filtered.csv`**:
   - Responses to the CRI questionnaire from 321 organizations across various industries in Ecuador.

### R Scripts
1. **`grm_activities.R`**:
   - Script to analyze the **Activities** factor in the CRI framework.
2. **`grm_funding_sources.R`**:
   - Script to analyze the **Funding Sources** factor.
3. **`grm_impacts.R`**:
   - Script to analyze the **Impacts** factor.
4. **`grm_information_sources.R`**:
   - Script to analyze the **Information Sources** factor.
5. **`grm_objectives.R`**:
   - Script to analyze the **Objectives** factor.
6. **`grm_results.R`**:
   - Script to analyze the **Results** factor.

---

## How to Use

### Step 1: Clone the Repository
Clone this repository to your local environment:
```bash
git clone https://github.com/your-username/CRI-IRT-Model.git
cd CRI-IRT-Model
```

### Step 2: Load the Datasets
- Place the datasets in your working directory.
- Update file paths in the scripts if necessary.

### Step 3: Run the R Scripts
- Open the desired script (e.g., `grm_activities.R`) in RStudio.
- Follow the comments in the script to process data and generate outputs.

---

## Citation

If you use this repository in your research, please cite the original paper:
```
Author Names, "Measuring Innovation Potential in Ecuadorian ICT Companies: Development and Application of the CRI-IRT Model," *Journal Name*, vol. X, no. Y, pp. Z-Z, 2024. DOI: [10.xxxxx/yyyyyy](https://doi.org/10.xxxxx/yyyyyy)
```

---

## License

This repository is distributed under the [MIT License](LICENSE).

## Contact

For questions, please contact:
- **Lead Author**: Christian Anasi (christian.anasi@epn.edu.ec)
- **GitHub Issues**: [Submit an Issue](https://github.com/christiandag/CRI-IRT-Model/issues)
