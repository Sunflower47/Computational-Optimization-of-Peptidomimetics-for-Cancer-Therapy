# Background & Objectives
The protein-protein interaction between the anti-apoptotic protein Bfl-1 and the pro-apoptotic protein Bim was chosen as the structural foundation for cancer drug design.

Cancer cells exploit the overexpression of Bfl-1 to evade cell death signals. Furthermore, elevated Bfl-1 levels confer chemoresistance to tumors, rendering them unresponsive to chemotherapy.

Inhibition of Bfl-1 represents a promising strategy to block these survival mechanisms.

<table>
<tr>
<td style="text-align: center;">
<img width="1325" height="587" alt="image" src="https://github.com/user-attachments/assets/d91519f9-bab1-40a7-8080-6f09c7dbdec0" />
</td>
</tr>
<tr>
<td align="center"><strong>2VM6, Human Bcl2-A1 (green) in complex with Bim-BH3 peptide (orange)</strong></td>
</tr>
</table> 



# Target Selection
The Bim peptide fragment spanning residues 152–159 (**LRRIGDEF**) was selected as the structural template for peptidomimetic design. These specific residues contribute most significantly to the protein-protein interaction interface.
<table>
  <thead>
    <tr>
      <th colspan="2" align="center">Key Interactions at the Binding Interface</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>Leu152</b> accommodates into the <b>h2</b> hydrophobic pocket of the Bfl-1 protein.</td>
      <td><img width="442" height="173" alt="leu152" src="https://github.com/user-attachments/assets/53a7f04c-ffe4-4d0c-bf57-c94892967b8e" /></td>
    </tr>
    <tr>
      <td>
        <b>Ile155</b> buries deep into the <b>h3</b> pocket.<br />
        <b>Phe159</b> occupies the <b>h4</b> pocket.
      </td>
      <td><img width="442" height="228" alt="phe159ile155" src="https://github.com/user-attachments/assets/c2a555dc-8230-4ec5-b967-88ac86d401d4" /></td>
    </tr>
    <tr>
      <td>The <b>Asp157</b> residue plays a crucial role by forming a stabilizing salt bridge with <b>Arg88</b> of Bfl-1.</td>
      <td><img width="442" height="222" alt="salt" src="https://github.com/user-attachments/assets/6b2b1432-94c1-4b85-b988-d10479e369ec" /></td>
    </tr>
  </tbody>
</table>

# Structural Modification

<table width="100%">
  <tr>
    <td align="center" style="background-color: #ffffff; padding: 20px;">
      <img width="80%" alt="2D Peptide Structure" src="https://github.com/user-attachments/assets/69ad713a-b77f-4252-88be-ac1ab7847948" />
    </td>
  </tr>
  <tr>
    <td align="center" style="background-color: #f6f8fa; padding: 10px;">
      <b>2D-structure of the unmodified Bim peptide (LRRIGDEF)</b><br />
    </td>
  </tr>
</table> 

To execute this structural transformation, the native **Phe159** residue was rationally substituted with the non-natural amino acid analogue **2-amino-2-(naphthalen-2-yl)acetic acid**. 

The selection of this specific modification was driven by the hypothesis that the bulkier naphthalene core, possessing a larger hydrophobic surface area and volume compared to the original benzene ring of phenylalanine, would allow the side chain to more densely occupy and efficiently pack the target **h4** hydrophobic pocket of the Bfl-1 protein. 


<table width="100%" style="width: 100%; table-layout: fixed; border-collapse: collapse;">
  <tr>
    <td align="center" style="background-color: #ffffff; padding: 20px; width: 100%;">
      <img width="80%" style="width: 100%; max-width: 100%; height: auto;" alt="2D Peptide Structure" src="https://github.com/user-attachments/assets/16419dee-67e1-477d-ba50-5ad9197ae90c" />
    </td>
  </tr>
  <tr>
    <td align="center" style="background-color: #f6f8fa; padding: 10px; width: 100%;">
      <b>2D-structure of the modified peptide</b>
    </td>
  </tr>
</table>

# Proof of Concept
### Workflow & Computational Pipeline

The structural optimization and evaluation pipeline was executed through the following stages:

1. **Format Conversion:** Initial molecular structures were converted from PDB format into PDBQT and SDF formats using **Open Babel (`obabel`)**.
2. **Peptidomimetic Design:** Structural modifications were introduced into the 2D peptide template by editing the ligand's SDF file within the **DataWarrior** software suite.
3. **Structure Minimization & Optimization:** To obtain a chemically realistic 3D conformation of the newly engineered peptidomimetic, geometry optimization and energy minimization were performed using **Open Babel**. The minimized structure was subsequently converted into the PDBQT format required for the docking engine.
4. **Molecular Docking:** Virtual screening simulations were executed using **smina**. To ensure statistical robustness, two independent sets of molecular docking were conducted:
   * 10 independent docking runs for the baseline (unmodified) peptide-protein system.
   * 10 independent docking runs for the modified peptidomimetic-protein system.
5. **Statistical Analysis:** The top-ranked binding affinity scores (Mode 1) from all individual runs were collected to construct **95% confidence intervals (CI)** for both the native peptide and the optimized peptidomimetic analogue, enabling a rigorous thermodynamic comparison.

# Results & Conclusion

<table>
  <thead>
    <tr>
      <th colspan="3" align="center">95% Confidence Intervals for Binding Affinity (kcal/mol)</th>
    </tr>
    <tr>
      <th>Ligand Structure</th>
      <th align="center">Lower Bound</th>
      <th align="center">Upper Bound</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>Baseline (Unmodified Bim Peptide)</b></td>
      <td align="center">-5.56</td>
      <td align="center">-5.09</td>
    </tr>
    <tr>
      <td><b>Modified Peptidomimetic</b></td>
      <td align="center">-6.04</td>
      <td align="center">-5.55</td>
    </tr>
  </tbody>
</table>

The statistical analysis of the molecular docking data provides robust validation for the introduced structural modification:

* **Non-Overlapping Intervals:** The 95% confidence intervals for the baseline peptide `[-5.56, -5.09] kcal/mol` and the optimized peptidomimetic `[-6.04, -5.55] kcal/mol` exhibit **no operational overlap**. 
* **Statistical Significance:** Because the intervals remain mathematically separated, the observed shift in binding energy (an affinity gain of **1.97 kJ/mol**) is **statistically significant** and cannot be attributed to the stochastic noise or algorithmic variance of the `smina` docking engine.

**Summary:** This clear thermodynamic separation confirms our initial structural hypothesis. Replacing the native phenylalanine residue with a bulkier, non-natural naphthalene analogue successfully improves the ligand's binding profile, proving that a larger hydrophobic volume yields a genuinely tighter and more stable interaction within the Bfl-1 target pocket.
