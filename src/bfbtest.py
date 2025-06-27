#%%

import numpy as np


# M = np.array([[4, 2, 1, 3],
#               [2, 9, 5, 6],
#               [1, 5, 16, 8],
#               [3, 6, 8, 7]])

M = np.array([[4, -2, 1, -3],
              [-2, 9, -5, -6],
              [1, -5, 16, -8],
              [-3, -6, -8, 7]])
# print(copos(M))
# %%
def subm(M, remove_idx):
    keep_idx = [i for i in range(M.shape[0]) if i not in remove_idx]
    return M[np.ix_(keep_idx, keep_idx)]

# print(get_largest_principal_submatrix(M, [1,3]))

def adjugate(matrix):
    """Faster implementation using numpy vectorization"""
    if matrix.shape[0] != matrix.shape[1]:
        raise ValueError("Input matrix must be square")
    
    n = matrix.shape[0]
    
    # Base cases
    if n == 1:
        return np.array([[1]])
    if n == 2:
        return np.array([[matrix[1,1], -matrix[0,1]],
                        [-matrix[1,0], matrix[0,0]]])
    
    # Calculate all minors at once using advanced indexing
    rows, cols = np.indices((n, n))
    mask = (rows != rows[:,:,None]) & (cols != cols[:,:,None])
    
    # Compute all cofactors
    cofactors = np.zeros_like(matrix, dtype=float)
    for i in range(n):
        for j in range(n):
            minor = matrix[np.arange(n) != i][:, np.arange(n) != j]
            cofactors[i,j] = ((-1)**(i+j)) * np.linalg.det(minor)
    
    return cofactors.T



# print(adjugate(M))

# %%

# %%
from itertools import combinations
def copos(M):
    diag_p = np.all(np.diagonal(M)>=0) # check all diagonal terms are positive
    if diag_p:
        n = M.shape[0]
        k = 2
        while n >= k : 
            ap = list(combinations(range(n), k))
            cospc = []
            for ind in ap:
                # msub = (subm(M, ind))
                msub = M[np.ix_(ind, ind)]# check the copositivity of submatrices
                deta = np.linalg.det(msub)
                adja = np.array(adjugate(msub))
                print(deta, adja)
                cospc.append(deta>=0 or np.min(adja) <0) # 
            if not (np.all(cospc)): 
                # cospc = False
                break
            k = k +1
            # print(np.all(cospc))
        return np.all(cospc)


M = np.array([
    [2,-2],
    [-2,2]
])

    #     return 
    # else:
    #     return False
copos(M)

# def copos_crit_2(M):
#     diag = np.diag(M)
#     n = len(diag)
#     i, j = np.triu_indices(n, k=1)
#     values = M[i,j] + np.sqrt(diag[i] * diag[j])
    
#     print(values)
#     return np.all(values>=0)
# %%
