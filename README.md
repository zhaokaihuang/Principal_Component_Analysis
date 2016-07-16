Principal Component Analysis (PCA)
======
The goal of project is applying PCA to _data visualization_ and _image reconstruction_. The project builds the applications of PCA and extends it in Matlab. Meanwhile, the implementations are tested on datasets.

Basically, there are 2 ways to implement PCA, which are derived from **covariance matrix** and **Singular Value Decomposition** (SVD).
For a given data set d*N (d>>N), the SVD overcomes the implication of covariance matrix that the latter is computatinally expensive (ie., d is the number of dimensionally while N is that of sample).
<hr/>
Below presents 5 steps to build PCA:<p>
1. Data Centralization<br>
2. Eigenanalysis/SVD process<br>
3. Finding principal components<br>
4. Encoding data point<br>
5. Reconstructing data point<br>

Let's dive into the functions implementing 2 versions of PCA in Matlab.
```
- pca1.m      % PCA based on covariance matrix
- pca2.m      % PCA based on Singular Value Decomposition (SVD)
- data_vis.m  % visualize iris dataset on computed principal components 
- img_rec.m   % reconstruct images from digit dataset using SVD-PCA
- KPCA.m      % implements Kernel PCA to reduce dimensionality, referred to prof. Deng Cai @ZJU
```

Then follows the resultant images got from the applications.
The data visualization is concerned about projecting iris data on main principal components, by which we can compare the significance of each eigenvector.

<p align="center">
<img src="./imgs/PC1-PC2.jpg"><br/><br/>
<i>Figure 1</i>, projection of iris data on PC1-PC2.<br/>
<img src="./imgs/PC1-PC3.jpg"><br/>
<i>Figure 2</i>, projection of iris data on PC1-PC3.<br/>
<img src="./imgs/PC2-PC3.jpg"><br/>
<i>Figure 3</i>, projection of iris data on PC2-PC3.<br/>
</p>
