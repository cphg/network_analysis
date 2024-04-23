# Network analysis

This assignment consists of two tasks, one focused on random walk with restart (RWR) and the other on using Laplacian matrix for clustering. 

## Random walk with restart

For this task, your goal is to find candidate genes associated with disease X using a guilt-by-association approach. To accomplish this, you will use a random walk with restart (RWR) algorithm implemented as a function in the rwr.R file. The PPI.tsv.gz file encodes an undirected unweighted protein-protein interaction (PPI) network.

You will use the RWR function and the PPI network to find the 10 genes, besides PIK3R1, that are most likely to be causal for disease X. Remember that guilt-by-association methods assume that genes/proteins underlying the same phenotype tend to be interact, and this principle can be used to combine signals from individual genes. Therefore, a higher RWR score for a gene means that it is more likely to be functionally related to a "seed", a gene that is known to be involved in the disease.

For the first part of your exercise, you should use the RWR function and set the "PIK3R1" gene as the seed. Then, use the default values for gamma, tmax, and eps to find the 10 genes most likely to be causal for disease X. Please submit the **names and scores** of these 10 genes once you have identified them.

For the next part of the task, you should vary gamma from 0.1 to 0.8 with a step size of 0.1 (`seq(0.1,0.8,0.1)`) and identify the top 10 candidates for each case. You should pay attention to whether the top 10 genes change or remain the same and whether the order of the genes changes. Please submit whether the top 10 genes or their order changes, and please explain why you think that is the case. 

Note that in the PPI network, an edge between nodes "A" and "B" implies an edge between nodes "B" and "A". To save space, PPI.tsv.gz only has one of the two edges.

## Spectral clustering

The following graph G includes 12 nodes. 

![graph](modular.svg)

Define the adjacency matrix $A$, and the degree matrix $D$ for this undirected, unweighted graph. The define the Laplacian matrix $L$, where $L = D - A$. Similar to the example in class, decompose $L =  U \Sigma U^{-1}$. Explain how you will clusters the nodes in $G$ using that decomposition. Submit the eigenvalues and eigenvectors of $L$ with the explanation of how you would use it to find clusters in the graph.

