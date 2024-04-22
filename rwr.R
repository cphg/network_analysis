Prob.norm <- function(W) {
    D <- diag(colSums(W))
    Dinv <- 1 / diag(D)
    P <- Dinv * W
    P
}

# Arguments:
# W: a numeric matrix representing the adjacency matrix of the graph
# seeds: indices of the "core" positive examples of the graph. They represent the indices of W corresponding to the positive examples
# gamma: restart parameter (default: 0.6)
# tmax: maximum number of iterations (steps) (default: 1000)
# eps: maximum allowed difference between the computed probabilities at the steady state (def. 1e-10)

# Returns a list with
# p: updated scores for all nodes
# seeds: indices of seeds used
# n.iter: number of iterations to convergence
RWR <- function (W, seeds, gamma = 0.6, tmax = 1000, eps = 1e-10) 
{
    M <- Prob.norm(W) # M = D^-1 * W
    n <- nrow(M)
    p0 <- p <- numeric(n)
    names(p) <- names(p0) <- rownames(W)
    rm(W)
    n.positives <- length(seeds)
    if (n.positives == 0) 
        stop("RWR: number of seeds is equal to 0!")
    p0[seeds] <- 1/n.positives
    p <- p0
    for (t in 1:tmax) {
        pold <- p
        p <- ((1 - gamma) * as.vector(pold %*% M)) + gamma * p0
        if (sum(abs(p - pold)) < eps) break
    }
    return(list(p = p, seeds = seeds, n.iter = t))
}

