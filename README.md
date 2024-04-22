# Network analysis

This assignment consists of two sections, one focused on random walk with restart (RWR) and the other on centrality measures. Please submit your solutions to both sections.

## Random walk with restart

The goal of this exercise is to find candidate genes associated with disease X using a guilt-by-association approach. To accomplish this, you will use a random walk with restart (RWR) algorithm implemented as a function in the rwr.R file. The PPI.tsv.gz file encodes an undirected unweighted protein-protein interaction (PPI) network.

Your task is to use the RWR function and the PPI network to find the 10 genes, besides PIK3R1, that are most likely to be causal for disease X. Remember that guilt-by-association methods assume that genes/proteins with similar functions or similar phenotypes tend to be neighbors in biological networks. Therefore, a higher RWR score for a gene means that it is more likely to be functionally related to a "seed", a gene that is known to be involved in the disease.

For the first part of your exercise, you should use the RWR function and set the "PIK3R1" gene as the seed. Then, use the default values for gamma, tmax, and eps to find the 10 genes most likely to be causal for disease X. Please submit the names and scores of these 10 genes once you have identified them.

For the next part of the exercise, you should vary gamma from 0.1 to 0.8 with a step size of 0.1 (`seq(0.1,0.8,0.1)`) and identify the top 10 candidates for each case. You should pay attention to whether the top 10 genes change or remain the same and whether the order of the genes changes. If the top 10 genes or their order changes, please explain why you think that is the case.

Note that in the PPI network, an edge between nodes "A" and "B" implies an edge between nodes "B" and "A". To save space, PPI.tsv.gz only has one of the two edges.

## Centrality measures

Centrality measures measure the importance of nodes and edges in the network. The R package `igraph` includes network analysis tools that can make downstream analyses more efficient. If you need to install the package, you can find instructions on how to do so on the CRAN website at https://r.igraph.org.

Once igraph is installed, you should convert the network in PPI.tsv.gz into an igraph object. One way to do this is to create an adjacency matrix from the edges in PPI.tsv.gz, and then use the `graph_from_adjacency_matrix` function in igraph.

After converting the network into an igraph object, answer the following two questions:

1. Use the `degree` function in igraph to find the names of the 10 genes with the highest degree centrality.

2. Use the `closeness` function in igraph to determine the names of the 10 genes with the highest closeness centrality.

For (1) and (2) submit the names of the 10 genes.

