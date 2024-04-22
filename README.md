# network_analysis

For this assignment, submit solutions to the two questions, one focused on random walk with restart and the second one focused on centrality measures.

## Random walk with restart

The goal of this exercise is to find candidate genes associated with a disease X using a guilt-by-association approach. We will use a random walk with restart (RWR) to accomplish our goal. Remember that guilt-by-association methods are based on our assumption that genes/proteins with similar functions or similar phenotypes tend to be neighbors in biological networks. So a higher RWR score for a gene means that it is more likely to be functionally related to a "seed", which is a gene that is known to be involved in the disease.

1. A RWR function is implemented in the rwr.R file for you. The arguments and return values for the function are also included in the file. The file PPI.tsv.gz encodes a undirected unweighted protein-protein network. Each row in the file represents an edge. Using the RWR function, "PIK3R1" gene as the seed, and the protein-protein network in ppi.tsv.gz, find the 10 genes besides PIK3R1 that are most likely to be causal for X. Use the default values for gamma, tmax, and eps. 

2. Vary gamma from 0.1 - 0.8 with a step size of 0.1 (`seq(0.1,0.8,0.1)`) and identify the top 10 candidates for each case. Does the order of the genes change?  If yes, why is that?

For (1) submit the names and scores of the 10 genes, and for (2) respond whether the changing gamma affects the order of the genes and if yes, why?

Remember that an edge between nodes "A" and "B", implies an edge between nodes "B" and "A" in the case of undirected networks. To save space, PPI.tsv.gz only has one ofthe two edges. 

## Centrality measures

Centrality measures in networks are often used to measure the importance of nodes and edges in a network. The R package igraph includes a collection of network analysis tools and can be installed from CRAN as described here: https://r.igraph.org. 

For this exercise, convert the network in PPI.tsv.gz into an igraph object. One way to do this is to create an adjacency matrix from the edges in PPI.tsv.gz, and then use the `graph_from_adjacency_matrix` function in igraph.  Once you have the igraph object, answer the following questions.

1. Use the `degree` function in igraph to find the names of the 10 genes with the highest degree centrality.

2. Use the `closeness` function in igraph to determine the names of the 10 genes with the highest closeness centrality

For (1) and (2) submit the names of the 10 genes.

