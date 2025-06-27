import numpy as np
from itertools import combinations

def absc(z):
    return np.sqrt(z[0]**2 + z[1]**2)
def argc(z):
    if z[0]==0:
        if z[1]>= 0:
            return np.pi/2
        else:
            return -np.pi/2
    else:
        return np.arctan(z[1]/z[0])


l1 = None
l2 = None
l3 = None
l4 = None

l5 = None
phl5 = 0
l6 = None
phl6 = 0
l7 = None
phl7 = 0

l1p = None
l2p = None

l3p = None
phl3p = 0
l4p = None
phl4p = 0
l5p = None
phl5p = 0
l6p = None
phl6p = 0
l7p = None
phl7p = 0

l1pp = 0
phl1pp = None
l2pp = 0
phl2pp = None
l3pp = 0




def bfb(rho, theta, c):
    return [
        [l1/2, l6*rho*np.cos(theta-phl6), c*(l3+rho**2*(l4+l5*np.cos(2*theta+phl5)))/2, l1p/2 + l4p*np.cos(phl4p), (l1p-2*l4p*np.cos(phl4p))/2, -2*l4p*np.sin(phl4p)],
        [l6*rho*np.cos(theta-phl6), (1-c)*(l3+rho**2*(l4+l5*np.cos(2*theta+phl5)))/2, rho*l7*np.cos(theta-phl7), rho*(l3p*np.cos(theta+phl3p)+l6p*np.cos(theta+phl6p)+l7p*np.cos(theta-phl7p)), rho*(l3p*np.cos(theta+phl3p)-l6p*np.cos(theta+phl6p)-l7p*np.cos(theta-phl7p)), rho*2*(l7p*np.sin(theta-phl7p)-l6p*np.sin(theta+phl6p))],
        [c*(l3+rho**2*(l4+l5*np.cos(2*theta+phl5)))/2, rho*l7*np.cos(theta-phl7), l2/2, l2p/2+l5p*np.cos(phl5p), (l2p-2*l5p*np.cos(phl5p))/2, -2*l5p%np.sin(phl5p)],
        [l1p/2 + l4p*np.cos(phl4p), rho*(l3p*np.cos(theta+phl3p)+l6p*np.cos(theta+phl6p)+l7p*np.cos(theta-phl7p)), l2p/2+l5p*np.cos(phl5p), (3*l3pp+l1pp*np.cos(phl1pp)+2*l2pp*np.cos(phl2pp))/12, (3*l3pp-l1pp*np.cos(phl1pp))/12, (-l1pp*np.sin(phl1pp)-l2pp*np.sin(phl2pp))/6],
        [(l1p-2*l4p*np.cos(phl4p))/2,  rho*(l3p*np.cos(theta+phl3p)-l6p*np.cos(theta+phl6p)-l7p*np.cos(theta-phl7p)), (l2p-2*l5p*np.cos(phl5p))/2, (3*l3pp-l1pp*np.cos(phl1pp))/12, (3*l3pp+l1pp*np.cos(phl1pp)-2*l2pp*np.cos(phl2pp))/12, (l1pp*np.sin(phl1pp)-l2pp*np.sin(phl2pp))/6],
        [-2*l4p*np.sin(phl4p), rho*2*(l7p*np.sin(theta-phl7p)-l6p*np.sin(theta+phl6p)), -2*l5p%np.sin(phl5p), (-l1pp*np.sin(phl1pp)-l2pp*np.sin(phl2pp))/6, (l1pp*np.sin(phl1pp)-l2pp*np.sin(phl2pp))/6, -l1pp*np.cos(phl1pp)/3]
    ]

def bfb_mat(par, rho, theta, phi_s):
    l1 = par.l1
    l2 = par.l2
    l3 = par.l3
    l4 = par.l4
    l1p = par.l1p
    l2p = par.l2p
    l3pp =par.l3pp

    l5 = absc(par.l5)
    l6 = absc(par.l6)
    l7 = absc(par.l7)
    phl6 = argc(par.l5)
    phl5 = argc(par.l6)
    phl7 = argc(par.l7)


    l1pp = absc(par.l1pp)
    l2pp = absc(par.l2pp)
    phl1pp = argc(par.l1pp)
    phl2pp = argc(par.l2pp)

    l3p = absc(par.l3p)
    l4p = absc(par.l4p)
    l5p = absc(par.l5p)
    l6p = absc(par.l6p)
    l7p = absc(par.l7p)
    phl3p = argc(par.l3p)
    phl4p = argc(par.l4p)
    phl5p = argc(par.l5p)
    phl6p = argc(par.l6p)
    phl7p = argc(par.l7p)

    return [
    [
        l1/2,
        l6 * rho * np.cos(theta + phl6),
        l3/2,
        l1p/2 + l4p * np.cos(2*phi_s + phl4p)
    ],
    [
        l6 * rho * np.cos(theta + phl6),
        rho**2 * (l4 + l5 * np.cos(2*theta + phl5)),
        l7 * rho * np.cos(theta + phl7),
        rho * (
            l3p * np.cos(theta + phl3p) + 
            l6p * np.cos(theta + 2*phi_s + phl6p) + 
            l7p * np.cos(theta - 2*phi_s - phl7p)
        )
    ],
    [
        l3/2,
        l7 * rho * np.cos(theta + phl7),
        l2/2,
        l2p/2 + l5p * np.cos(2*phi_s + phl5p)
    ],
    [
        l1p/2 + l4p * np.cos(2*phi_s + phl4p),
        rho * (
            l3p * np.cos(theta + phl3p) + 
            l6p * np.cos(theta + 2*phi_s + phl6p) + 
            l7p * np.cos(theta - 2*phi_s - phl7p)
        ),
        l2p/2 + l5p * np.cos(2*phi_s + phl5p),
        (1/12) * (
            3*l3pp + 
            l1pp * np.cos(4*phi_s + phl1pp) + 
            2*l2pp * np.cos(2*phi_s + phl2pp)
        )
    ]
]


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
                # print(deta, adja)
                cospc.append(deta>=0 or np.min(adja) <0) # 
            if not (np.all(cospc)): 
                # cospc = False
                break
            k = k +1
            # print(np.all(cospc))
        return np.all(cospc)
    else:
        return diag_p

def check_bfb_chl(min_V4):
    """checking whether the bfb conditions are fulfilled -
    this is another approach as in check_bfb. we write min_V4 as a 4x4
    matrix and follow the Cottle-Habetler-Lemke theorem."""
    STOP = 0
    # 1. distinguish two cases (as in Kannike)

    # 2. define minimum of V4 in matrix form

    # 3. now we check the copositivity following the Cottle-Habetler-Lemke
    # theorem:
    # 3.1. all diagonal elements have to be positive:
    if min_V4[0,0] <= 0 or min_V4[1,1] <= 0 or min_V4[2,2] <= 0 or min_V4[3,3] <= 0:
        STOP = 1
    else:
        # 3.2. second copositivity conditions:
        a_12 = copos_crit_2(min_V4, 0, 1)
        a_13 = copos_crit_2(min_V4, 0, 2)
        a_14 = copos_crit_2(min_V4, 0, 3)
        a_23 = copos_crit_2(min_V4, 1, 2)
        a_24 = copos_crit_2(min_V4, 1, 3)
        # a_34 is redundant (always satisfied because min_V4[2,3]=min_V4[3,3])
        if a_12 <= 0 or a_13 <= 0 or a_14 <= 0 or a_23 <=0 or a_24 <=0:
            STOP = 1
        else:
            # 3.3. third copositivity conditions:
            # first we calculate the order 3 principal submatrices:
            A_1 = delete_rows_and_columns(min_V4, 0, 0)
            A_2 = delete_rows_and_columns(min_V4, 1, 1)
            A_3 = delete_rows_and_columns(min_V4, 2, 2)
            A_4 = delete_rows_and_columns(min_V4, 3, 3)
            # then we get the copositivity condition for order 3 matrices:
            A_1_crit = copos_crit_3(A_1)
            A_2_crit = copos_crit_3(A_2)
            A_3_crit = copos_crit_3(A_3)
            A_4_crit = copos_crit_3(A_4)
            if A_1_crit <= 0 or A_2_crit <= 0 or A_3_crit <= 0 or A_4_crit <= 0:
                STOP = 1
            else:
                # 3.4. fourth copositivity conditions:
                # either det(min_V4) has to be positive or an element of the
                # adjungate has to be negative
                if np.linalg.det(min_V4) > 0:
                    STOP = 0 # cond. satisfied, no need for further checks
                else:
                    adj_min_V4 = get_adjungate(min_V4)
                    if (adj_min_V4 < 0).any():
                        STOP = 0 # cond. satisfied
                    else:
                        STOP = 1
    return STOP




def delete_rows_and_columns(A, i, j):
    """get the submatrix of A by deleting the i-th row and j-th column
    Args:
        A (np.array): the main matrix (which we want to reduce by order 1),
            A has to have equal number of rows and columns
        i (int): row of A which we want to delete
        j (int): column of A which we want to delete
    Returns:
        A_red (np.array): the submatrix of A
    """
    A_red_row = np.delete(A, i, 0)
    A_red = np.delete(A_red_row, j, 1)
    return A_red

def copos_crit_2(A, i, j):
    """copositivity criteria for a 2x2 submatrix of a matrix with order >= 2
    Args:
        A (np.array): the main matrix (for which we want to check the
            copositivity of its 2x2 submatrices)
        i (int): row of A
        j (int): column of A
    Returns:
        copos_crit (float): the condition which has to be checked
    """
    copos_crit = A[i,j] + np.sqrt(A[i,i]*A[j,j])
    return copos_crit

def copos_crit_3(A):
    """copositivity criteria for a 3x3 submatrix,
    this only returns the last condition (eq. 6 in Kannike)
    Args:
        A (np.array): the 3x3 matrix (for which we want to check the
            copositivity)
    Returns:
        copos_crit (float): the condition which has to be checked
    """
    a_12 = copos_crit_2(A, 0, 1)
    a_13 = copos_crit_2(A, 0, 2)
    a_23 = copos_crit_2(A, 1, 2)
    copos_crit = np.sqrt(A[0,0]*A[1,1]*A[2,2]) + A[0,1]*np.sqrt(A[2,2]) \
                 + A[0,2]*np.sqrt(A[1,1]) + A[1,2]*np.sqrt(A[0,0]) \
                 + np.sqrt(2*a_12*a_13*a_23)
    return copos_crit

def get_adjungate(A):
    """get the adjungate of a symmetric 4x4 matrix A
    Args:
        A (np.array): the symmetric 4x4 matrix
            (of which we want to get the adjungate)
    Returns:
        adj_A (np.array): the symmetric 4x4 adjungate matrix of A
    """
    adj_A = np.zeros((len(A), len(A)))
    for i in range(len(A)):
        for j in range(len(A)):
            if i<=j:
                M = delete_rows_and_columns(A, j, i)
                adj_A[i,j] = (-1)**(i+j)*np.linalg.det(M)
            else:
                adj_A[i,j] = adj_A[j,i] # matrix is symmetric, no need to calc twice
    return adj_A