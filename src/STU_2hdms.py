import numpy as np

mW = 80.385
mZ = 91.1876
mHref = 125
sw2 = 1-(mW**2/mZ**2)


class STU:
    S = 0
    T = 0
    U = 0
    chi2 = 0

ofs=1e-2

def F(I,J):
    if I==J:
        return 0
    else:
        return (I+J)/2-I*J/(I-J)*np.log(I/J)

def frt(t,r):
    if r>0:
        return np.sqrt(r)*np.log( np.abs( (t-np.sqrt(r))/(t+np.sqrt(r))) )
    elif r==0:
        return 0
    elif r<0:
        return 2*np.sqrt(-r)*np.arctan(np.sqrt(-r)/t)
def G(I,J,Q):
    if I==J:
        I+=ofs
    t = I+J-Q
    r = Q**2-2*Q*(I+J)+(I-J)**2

    return -16/3+5*(I+J)/Q-2*(I-J)**2/Q**2+3/Q*( (I**2+J**2)/(I-J)-(I**2-J**2)/Q+(I-J)**3/(3*Q**2))*np.log(I/J)+r/Q**3*frt(t,r)

def Ghat(I,Q):
    if I==Q:
        I+=ofs
    return -79/3+9*I/Q-2*I**2/Q**2+(-10+18*I/Q-6*I**2/Q**2+I**3/Q**3-9*(I+Q)/(I-Q))*np.log(I/Q)+(12-4*(I/Q)+I**2/Q**2)*(frt(I,I**2-4*I*Q)/Q)



def STUchk(mh1, mh2, mh3, ma1, ma2, mp, tb, a1, a2, a3, a4):
    n=2
    m=6


    b=np.arctan(tb)
    sb=np.sin(b)
    cb=np.cos(b)
    sa1=np.sin(a1)
    sa2=np.sin(a2)
    sa3=np.sin(a3)
    ca1=np.cos(a1)
    ca2=np.cos(a2)
    ca3=np.cos(a3)
    sa4=np.sin(a4)
    ca4=np.cos(a4)

    i = 1j

    V=np.matrix([[i*cb,-i*sb*ca4,i*sb*sa4,ca1*ca2,-ca1*sa2*sa3-sa1*ca3,-ca1*sa2*ca3+sa1*sa3],
                 [i*sb,i*cb*ca4,-i*cb*sa4,sa1*ca2,-sa1*sa2*sa3+ca1*ca3,-sa1*sa2*ca3-ca1*sa3]])
    # R=np.matrix([0,0,sa2,ca2*sa3,ca2*ca3] )
    U=np.matrix([[cb,-sb],[sb,cb]] )

    VD=V.H
    UD=U.H

    VDV=np.matmul(VD,V)
    UDV=np.matmul(UD,V)
    UDU=np.matmul(UD,U)

    m_charged_2=np.array([0,mp],dtype=np.float64)**2
    m_neutral_2=np.array([0,ma1,ma2,mh1,mh2,mh3],np.float64)**2

    Tpre=1/(16*np.pi*sw2*mW**2)
    T1=sum( np.abs(UDV[1,b])**2*F(m_charged_2[1],m_neutral_2[b]) for b in range(1,m))
    T2=-sum( sum(np.imag(VDV[b,c])**2*F(m_neutral_2[b],m_neutral_2[c]) for c in range(b+1,m)) for b in range(1,m-1))
    T3=-2*sum( sum(np.abs(UDU[b,c])**2*F(m_charged_2[b],m_charged_2[c]) for c in range(b+1,n)) for b in range(1,n-1))
    T4=+3*sum( np.imag(VDV[0,b])**2*(F(mZ**2,m_neutral_2[b])-F(mW**2,m_neutral_2[b])) for b in range(1,m))
    T5=-3*(F(mZ**2,mHref**2)-F(mW**2,mHref**2))
    STU.T=Tpre*(T1+T2+T3+T4+T5)
    # print(T1+T2+T3)
    # print(T4+T5)

    Spre = 1 / (24*np.pi)
    S1=sum( np.abs(2*sw2-UDU[a,a])**2*G(m_charged_2[a],m_charged_2[a],mZ**2) for a in range(1,n))
    S2=+2*sum( sum(np.abs(UDU[b,c])**2*G(m_charged_2[b],m_charged_2[c],mZ**2) for c in range(b+1,n)) for b in range(1,n-1))
    S3=+sum( sum(np.imag(VDV[b,c])**2*G(m_neutral_2[b],m_neutral_2[c],mZ**2) for c in range(b+1,m)) for b in range(1,m-1))
    S4=-2*sum(UDU[a,a]*np.log(m_charged_2[a]) for a in range(1,n))
    S5=+sum(VDV[b,b]*np.log(m_neutral_2[b]) for b in range(1,m))-np.log(mHref**2)
    S6=+sum(np.imag(VDV[0,b])**2*Ghat(m_neutral_2[b],mZ**2) for b in range(1,m))
    S7=-Ghat(mHref**2,mZ**2)    

    # print(S1)
    # print(S2)
    # print(S3, 'ahv')
    # print(S4+S5, 'hhvv')
    # print(S6+S7, 'hvv')

    STU.S=np.real(Spre*(S1+S2+S3+S4+S5+S6+S7))

    Upre = 1 / (24*np.pi)
    U1=sum( sum(np.abs(UDV[a,b])**2*G(m_charged_2[a],m_neutral_2[b],mW**2) for b in range(1,m)) for a in range(1,n))
    U2=-sum( np.abs(2*sw2-UDU[a,a])**2*G(m_charged_2[a],m_charged_2[a],mZ**2) for a in range(1,n))
    U3=-2*sum( sum(np.abs(UDU[b,c])**2*G(m_charged_2[b],m_charged_2[c],mZ**2) for c in range(b+1,n)) for b in range(1,n-1))
    U4=-sum( sum(np.imag(VDV[b,c])**2*G(m_neutral_2[b],m_neutral_2[c],mZ**2) for c in range(b+1,m)) for b in range(1,m-1))
    U5=+sum(np.imag(VDV[0,b])**2*(Ghat(m_neutral_2[b],mW**2)-Ghat(m_neutral_2[b],mZ**2)) for b in range(1,m))
    U6=-Ghat(mHref**2,mW**2)+Ghat(mHref**2,mZ**2)
    STU.U=np.real(Upre*(U1+U2+U3+U4+U5+U6))
    
    
    # STU.chi2 = (STU.S-0.04)*(STU.S-0.04)*879.48297544 + (STU.S-0.04)*(STU.T-0.09)*(-933.49130295)*2 + (STU.S-0.04)*(STU.U+0.02)*(-435.58103761)*2 + \
        #    (STU.T-0.09)*(STU.T-0.09)*(1200.69039698) + (STU.T-0.09)*(STU.U+0.02)*(694.71764446)*2 + (STU.U+0.02)*(STU.U+0.02)*555.69142339

    s_exp = -0.04
    t_exp = 0.01
    u_exp = -0.01
           
    ds = 0.1
    dt = 0.12
    du = 0.09
    cst = 0.93
    csu = -0.7
    ctu = -0.87


    cov = np.array([[ds**2, ds*dt*cst, ds*du*csu],[ds*dt*cst, dt**2, dt*du*ctu], [ds*du*csu, dt*du*ctu, du**2]])
    stu = np.array([[STU.S-s_exp],[STU.T-t_exp],[STU.U-u_exp]])

    # ds = 0.07
    # dt = 0.06
    # cst = 0.92
    # s_exp = -0.01
    # t_exp = 0.04

    # cov = np.array([[ds**2, ds*dt*cst],[ds*dt*cst, dt**2]])
    # stu = np.array([[STU.S-s_exp],[STU.T-t_exp]])

    stuT = stu.transpose()
    STU.chi2 = np.matmul(stuT, np.matmul(np.linalg.inv(cov), stu) )[0][0]

    return STU.chi2 < 5.99
