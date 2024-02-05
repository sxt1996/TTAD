# TTAD
# code for paper:《Anomaly Detection Based on Tree Topology for Hyperspectral Images》
DOI: 10.1109/JSTARS.2022.3197642
# Abstract
As one of the most important research and application directions in hyperspectral remote sensing, anomaly detection (AD) aims to locate objects of interest within a specific scene by exploiting spectral feature differences between different types of land cover without any prior information. Most traditional AD algorithms are model-driven and describe hyperspectral data with specific assumptions, which cannot combat the distributional complexity of land covers in real scenes, resulting in a decrease in detection performance. To overcome the limitations of traditional algorithms, a novel tree topology-based anomaly detection (TTAD) method for hyperspectral images (HSIs) is proposed in this paper. TTAD departs from the single analytical mode based on specific assumptions but directly parses the HSI data itself. It makes full use of the "few and different" characteristics of anomalous data points that are sparsely distributed and far away from high-density populations. On this basis, topology, a powerful tool in mathematics that successfully handle multiple types of data mining tasks, is applied to anomaly detection to ensure sufficient feature extraction of land covers. First, the redistribution of HSI data is realized by constructing a tree-type topological space to improve the separability between anomalies and backgrounds. Then, topologically related subsets in this space are utilized to evaluate the abnormality degree of each sample in a data set, and detection results for the HSI are output accordingly. Abandoning traditional modeling but focusing on mining the data characteristics of HSI itself enables TTAD to better adapt to different complex scenes and locate anomalies with high precision. Experimental results on a large number of benchmark data sets demonstrate that TTAD could achieve excellent detection results with considerable computational efficiency. The proposed method exhibits superior comprehensive performance and is promising to be popularized in practical applications. 
# Index Terms
Hyperspectral remote sensing, anomaly detection, data mining, topological mapping, machine learning.
# Flowchart
![flowchart](https://github.com/sxt1996/TTAD/assets/55687887/db136e13-e68e-423a-bf00-62e612a5e52a)
# Data Set
AVIRIS-1: This data set was acquired by the Airborne Visible/Infrared Imaging Spectrometer (AVIRIS) covering an area of San Diego in the spectral range of 370~2510 nm with a spatial resolution of 3.5 m. The water absorption and low SNR bands are removed from the original 224 spectral channels, and 189 bands are reserved for experiments. The full image contains 400 × 400 pixels. The AVIRIS-1 is a cropped sub-image containing 100 × 100 pixels. Three planes occupying 20, 22 and 22 pixels, respectively, are regarded as anomalies.
# Guidelines
1. Install R2014a or higher versions of MATLAB
2. Download this code package
3. Set path
4. Don't worry about importing data or anything else, just run Main.m
# Contact
If you have any questions, please feel free to contact me.
sxt1996@outlook.com
