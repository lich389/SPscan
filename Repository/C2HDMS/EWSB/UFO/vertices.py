# ------------------------------------------------------------------------------ 
# This model file was automatically created by SARAH version4.15.4
# SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
# (c) Florian Staub, Mark Goodsell, Werner Porod and Martin Gabelmann 2023 
# ------------------------------------------------------------------------------- 
# File created at 17:43 on 9.7.2025  
# ---------------------------------------------------------------------- 


from object_library import all_vertices,Vertex
import particles as P
import couplings as C
import lorentz as L


V_1 = Vertex(name = 'V_1',
    particles = [P.h1, P.h1, P.h1],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_1})


V_2 = Vertex(name = 'V_2',
    particles = [P.h1, P.h1, P.h2],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_2})


V_3 = Vertex(name = 'V_3',
    particles = [P.h1, P.h1, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_3})


V_4 = Vertex(name = 'V_4',
    particles = [P.h1, P.h1, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_4})


V_5 = Vertex(name = 'V_5',
    particles = [P.h1, P.h1, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_5})


V_6 = Vertex(name = 'V_6',
    particles = [P.h1, P.h1, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_6})


V_7 = Vertex(name = 'V_7',
    particles = [P.h1, P.h2, P.h2],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_7})


V_8 = Vertex(name = 'V_8',
    particles = [P.h1, P.h2, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_8})


V_9 = Vertex(name = 'V_9',
    particles = [P.h1, P.h2, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_9})


V_10 = Vertex(name = 'V_10',
    particles = [P.h1, P.h2, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_10})


V_11 = Vertex(name = 'V_11',
    particles = [P.h1, P.h2, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_11})


V_12 = Vertex(name = 'V_12',
    particles = [P.h1, P.h3, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_12})


V_13 = Vertex(name = 'V_13',
    particles = [P.h1, P.h3, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_13})


V_14 = Vertex(name = 'V_14',
    particles = [P.h1, P.h3, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_14})


V_15 = Vertex(name = 'V_15',
    particles = [P.h1, P.h3, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_15})


V_16 = Vertex(name = 'V_16',
    particles = [P.h1, P.h4, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_16})


V_17 = Vertex(name = 'V_17',
    particles = [P.h1, P.h4, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_17})


V_18 = Vertex(name = 'V_18',
    particles = [P.h1, P.h4, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_18})


V_19 = Vertex(name = 'V_19',
    particles = [P.h1, P.h5, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_19})


V_20 = Vertex(name = 'V_20',
    particles = [P.h1, P.h5, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_20})


V_21 = Vertex(name = 'V_21',
    particles = [P.h1, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_21})


V_22 = Vertex(name = 'V_22',
    particles = [P.h2, P.h2, P.h2],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_22})


V_23 = Vertex(name = 'V_23',
    particles = [P.h2, P.h2, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_23})


V_24 = Vertex(name = 'V_24',
    particles = [P.h2, P.h2, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_24})


V_25 = Vertex(name = 'V_25',
    particles = [P.h2, P.h2, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_25})


V_26 = Vertex(name = 'V_26',
    particles = [P.h2, P.h2, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_26})


V_27 = Vertex(name = 'V_27',
    particles = [P.h2, P.h3, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_27})


V_28 = Vertex(name = 'V_28',
    particles = [P.h2, P.h3, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_28})


V_29 = Vertex(name = 'V_29',
    particles = [P.h2, P.h3, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_29})


V_30 = Vertex(name = 'V_30',
    particles = [P.h2, P.h3, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_30})


V_31 = Vertex(name = 'V_31',
    particles = [P.h2, P.h4, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_31})


V_32 = Vertex(name = 'V_32',
    particles = [P.h2, P.h4, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_32})


V_33 = Vertex(name = 'V_33',
    particles = [P.h2, P.h4, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_33})


V_34 = Vertex(name = 'V_34',
    particles = [P.h2, P.h5, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_34})


V_35 = Vertex(name = 'V_35',
    particles = [P.h2, P.h5, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_35})


V_36 = Vertex(name = 'V_36',
    particles = [P.h2, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_36})


V_37 = Vertex(name = 'V_37',
    particles = [P.h3, P.h3, P.h3],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_37})


V_38 = Vertex(name = 'V_38',
    particles = [P.h3, P.h3, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_38})


V_39 = Vertex(name = 'V_39',
    particles = [P.h3, P.h3, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_39})


V_40 = Vertex(name = 'V_40',
    particles = [P.h3, P.h3, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_40})


V_41 = Vertex(name = 'V_41',
    particles = [P.h3, P.h4, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_41})


V_42 = Vertex(name = 'V_42',
    particles = [P.h3, P.h4, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_42})


V_43 = Vertex(name = 'V_43',
    particles = [P.h3, P.h4, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_43})


V_44 = Vertex(name = 'V_44',
    particles = [P.h3, P.h5, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_44})


V_45 = Vertex(name = 'V_45',
    particles = [P.h3, P.h5, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_45})


V_46 = Vertex(name = 'V_46',
    particles = [P.h3, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_46})


V_47 = Vertex(name = 'V_47',
    particles = [P.h4, P.h4, P.h4],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_47})


V_48 = Vertex(name = 'V_48',
    particles = [P.h4, P.h4, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_48})


V_49 = Vertex(name = 'V_49',
    particles = [P.h4, P.h4, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_49})


V_50 = Vertex(name = 'V_50',
    particles = [P.h4, P.h5, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_50})


V_51 = Vertex(name = 'V_51',
    particles = [P.h4, P.h5, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_51})


V_52 = Vertex(name = 'V_52',
    particles = [P.h4, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_52})


V_53 = Vertex(name = 'V_53',
    particles = [P.h5, P.h5, P.h5],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_53})


V_54 = Vertex(name = 'V_54',
    particles = [P.h5, P.h5, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_54})


V_55 = Vertex(name = 'V_55',
    particles = [P.h5, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_55})


V_56 = Vertex(name = 'V_56',
    particles = [P.h6, P.h6, P.h6],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_56})


V_57 = Vertex(name = 'V_57',
    particles = [P.h1, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_57})


V_58 = Vertex(name = 'V_58',
    particles = [P.h1, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_58})


V_59 = Vertex(name = 'V_59',
    particles = [P.h1, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_59})


V_60 = Vertex(name = 'V_60',
    particles = [P.h1, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_60})


V_61 = Vertex(name = 'V_61',
    particles = [P.h2, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_61})


V_62 = Vertex(name = 'V_62',
    particles = [P.h2, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_62})


V_63 = Vertex(name = 'V_63',
    particles = [P.h2, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_63})


V_64 = Vertex(name = 'V_64',
    particles = [P.h2, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_64})


V_65 = Vertex(name = 'V_65',
    particles = [P.h3, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_65})


V_66 = Vertex(name = 'V_66',
    particles = [P.h3, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_66})


V_67 = Vertex(name = 'V_67',
    particles = [P.h3, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_67})


V_68 = Vertex(name = 'V_68',
    particles = [P.h3, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_68})


V_69 = Vertex(name = 'V_69',
    particles = [P.h4, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_69})


V_70 = Vertex(name = 'V_70',
    particles = [P.h4, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_70})


V_71 = Vertex(name = 'V_71',
    particles = [P.h4, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_71})


V_72 = Vertex(name = 'V_72',
    particles = [P.h4, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_72})


V_73 = Vertex(name = 'V_73',
    particles = [P.h5, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_73})


V_74 = Vertex(name = 'V_74',
    particles = [P.h5, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_74})


V_75 = Vertex(name = 'V_75',
    particles = [P.h5, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_75})


V_76 = Vertex(name = 'V_76',
    particles = [P.h5, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_76})


V_77 = Vertex(name = 'V_77',
    particles = [P.h6, P.Hm1, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_77})


V_78 = Vertex(name = 'V_78',
    particles = [P.h6, P.Hm1, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_78})


V_79 = Vertex(name = 'V_79',
    particles = [P.h6, P.Hm2, P.Hm1c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_79})


V_80 = Vertex(name = 'V_80',
    particles = [P.h6, P.Hm2, P.Hm2c],
    color = ['1'],
    lorentz = [L.SSS1],
    couplings = {(0,0):C.GC_80})


V_81 = Vertex(name = 'V_81',
    particles = [P.h1, P.h1, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_81})


V_82 = Vertex(name = 'V_82',
    particles = [P.h1, P.h2, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_82})


V_83 = Vertex(name = 'V_83',
    particles = [P.h1, P.h3, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_83})


V_84 = Vertex(name = 'V_84',
    particles = [P.h1, P.h4, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_84})


V_85 = Vertex(name = 'V_85',
    particles = [P.h1, P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_85})


V_86 = Vertex(name = 'V_86',
    particles = [P.h1, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_86})


V_87 = Vertex(name = 'V_87',
    particles = [P.h2, P.h2, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_87})


V_88 = Vertex(name = 'V_88',
    particles = [P.h2, P.h3, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_88})


V_89 = Vertex(name = 'V_89',
    particles = [P.h2, P.h4, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_89})


V_90 = Vertex(name = 'V_90',
    particles = [P.h2, P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_90})


V_91 = Vertex(name = 'V_91',
    particles = [P.h2, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_91})


V_92 = Vertex(name = 'V_92',
    particles = [P.h3, P.h3, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_92})


V_93 = Vertex(name = 'V_93',
    particles = [P.h3, P.h4, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_93})


V_94 = Vertex(name = 'V_94',
    particles = [P.h3, P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_94})


V_95 = Vertex(name = 'V_95',
    particles = [P.h3, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_95})


V_96 = Vertex(name = 'V_96',
    particles = [P.h4, P.h4, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_96})


V_97 = Vertex(name = 'V_97',
    particles = [P.h4, P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_97})


V_98 = Vertex(name = 'V_98',
    particles = [P.h4, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_98})


V_99 = Vertex(name = 'V_99',
    particles = [P.h5, P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_99})


V_100 = Vertex(name = 'V_100',
    particles = [P.h5, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_100})


V_101 = Vertex(name = 'V_101',
    particles = [P.h6, P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_101})


V_102 = Vertex(name = 'V_102',
    particles = [P.h1, P.h1, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_102})


V_103 = Vertex(name = 'V_103',
    particles = [P.h1, P.h2, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_103})


V_104 = Vertex(name = 'V_104',
    particles = [P.h1, P.h3, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_104})


V_105 = Vertex(name = 'V_105',
    particles = [P.h1, P.h4, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_105})


V_106 = Vertex(name = 'V_106',
    particles = [P.h1, P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_106})


V_107 = Vertex(name = 'V_107',
    particles = [P.h1, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_107})


V_108 = Vertex(name = 'V_108',
    particles = [P.h2, P.h2, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_108})


V_109 = Vertex(name = 'V_109',
    particles = [P.h2, P.h3, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_109})


V_110 = Vertex(name = 'V_110',
    particles = [P.h2, P.h4, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_110})


V_111 = Vertex(name = 'V_111',
    particles = [P.h2, P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_111})


V_112 = Vertex(name = 'V_112',
    particles = [P.h2, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_112})


V_113 = Vertex(name = 'V_113',
    particles = [P.h3, P.h3, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_113})


V_114 = Vertex(name = 'V_114',
    particles = [P.h3, P.h4, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_114})


V_115 = Vertex(name = 'V_115',
    particles = [P.h3, P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_115})


V_116 = Vertex(name = 'V_116',
    particles = [P.h3, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_116})


V_117 = Vertex(name = 'V_117',
    particles = [P.h4, P.h4, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_117})


V_118 = Vertex(name = 'V_118',
    particles = [P.h4, P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_118})


V_119 = Vertex(name = 'V_119',
    particles = [P.h4, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_119})


V_120 = Vertex(name = 'V_120',
    particles = [P.h5, P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_120})


V_121 = Vertex(name = 'V_121',
    particles = [P.h5, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_121})


V_122 = Vertex(name = 'V_122',
    particles = [P.h6, P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_122})


V_123 = Vertex(name = 'V_123',
    particles = [P.h1, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_123})


V_124 = Vertex(name = 'V_124',
    particles = [P.h1, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_124})


V_125 = Vertex(name = 'V_125',
    particles = [P.h2, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_125})


V_126 = Vertex(name = 'V_126',
    particles = [P.h2, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_126})


V_127 = Vertex(name = 'V_127',
    particles = [P.h3, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_127})


V_128 = Vertex(name = 'V_128',
    particles = [P.h3, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_128})


V_129 = Vertex(name = 'V_129',
    particles = [P.h4, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_129})


V_130 = Vertex(name = 'V_130',
    particles = [P.h4, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_130})


V_131 = Vertex(name = 'V_131',
    particles = [P.h5, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_131})


V_132 = Vertex(name = 'V_132',
    particles = [P.h5, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_132})


V_133 = Vertex(name = 'V_133',
    particles = [P.h6, P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_133})


V_134 = Vertex(name = 'V_134',
    particles = [P.h6, P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_134})


V_135 = Vertex(name = 'V_135',
    particles = [P.h1, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_135})


V_136 = Vertex(name = 'V_136',
    particles = [P.h1, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_136})


V_137 = Vertex(name = 'V_137',
    particles = [P.h2, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_137})


V_138 = Vertex(name = 'V_138',
    particles = [P.h2, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_138})


V_139 = Vertex(name = 'V_139',
    particles = [P.h3, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_139})


V_140 = Vertex(name = 'V_140',
    particles = [P.h3, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_140})


V_141 = Vertex(name = 'V_141',
    particles = [P.h4, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_141})


V_142 = Vertex(name = 'V_142',
    particles = [P.h4, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_142})


V_143 = Vertex(name = 'V_143',
    particles = [P.h5, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_143})


V_144 = Vertex(name = 'V_144',
    particles = [P.h5, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_144})


V_145 = Vertex(name = 'V_145',
    particles = [P.h6, P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_145})


V_146 = Vertex(name = 'V_146',
    particles = [P.h6, P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_146})


V_147 = Vertex(name = 'V_147',
    particles = [P.h1, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_147})


V_148 = Vertex(name = 'V_148',
    particles = [P.h1, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_148})


V_149 = Vertex(name = 'V_149',
    particles = [P.h2, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_149})


V_150 = Vertex(name = 'V_150',
    particles = [P.h2, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_150})


V_151 = Vertex(name = 'V_151',
    particles = [P.h3, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_151})


V_152 = Vertex(name = 'V_152',
    particles = [P.h3, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_152})


V_153 = Vertex(name = 'V_153',
    particles = [P.h4, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_153})


V_154 = Vertex(name = 'V_154',
    particles = [P.h4, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_154})


V_155 = Vertex(name = 'V_155',
    particles = [P.h5, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_155})


V_156 = Vertex(name = 'V_156',
    particles = [P.h5, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_156})


V_157 = Vertex(name = 'V_157',
    particles = [P.h6, P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_157})


V_158 = Vertex(name = 'V_158',
    particles = [P.h6, P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_158})


V_159 = Vertex(name = 'V_159',
    particles = [P.h1, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_159})


V_160 = Vertex(name = 'V_160',
    particles = [P.h1, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_160})


V_161 = Vertex(name = 'V_161',
    particles = [P.h2, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_161})


V_162 = Vertex(name = 'V_162',
    particles = [P.h2, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_162})


V_163 = Vertex(name = 'V_163',
    particles = [P.h3, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_163})


V_164 = Vertex(name = 'V_164',
    particles = [P.h3, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_164})


V_165 = Vertex(name = 'V_165',
    particles = [P.h4, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_165})


V_166 = Vertex(name = 'V_166',
    particles = [P.h4, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_166})


V_167 = Vertex(name = 'V_167',
    particles = [P.h5, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_167})


V_168 = Vertex(name = 'V_168',
    particles = [P.h5, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_168})


V_169 = Vertex(name = 'V_169',
    particles = [P.h6, P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_169})


V_170 = Vertex(name = 'V_170',
    particles = [P.h6, P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_170})


V_171 = Vertex(name = 'V_171',
    particles = [P.Hm1, P.Hm1c, P.A, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_171})


V_172 = Vertex(name = 'V_172',
    particles = [P.Hm1, P.Hm2c, P.A, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_172})


V_173 = Vertex(name = 'V_173',
    particles = [P.Hm2, P.Hm1c, P.A, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_173})


V_174 = Vertex(name = 'V_174',
    particles = [P.Hm2, P.Hm2c, P.A, P.A],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_174})


V_175 = Vertex(name = 'V_175',
    particles = [P.Hm1, P.Hm1c, P.A, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_175})


V_176 = Vertex(name = 'V_176',
    particles = [P.Hm1, P.Hm2c, P.A, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_176})


V_177 = Vertex(name = 'V_177',
    particles = [P.Hm2, P.Hm1c, P.A, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_177})


V_178 = Vertex(name = 'V_178',
    particles = [P.Hm2, P.Hm2c, P.A, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_178})


V_179 = Vertex(name = 'V_179',
    particles = [P.Hm1, P.Hm1c, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_179})


V_180 = Vertex(name = 'V_180',
    particles = [P.Hm1, P.Hm2c, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_180})


V_181 = Vertex(name = 'V_181',
    particles = [P.Hm2, P.Hm1c, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_181})


V_182 = Vertex(name = 'V_182',
    particles = [P.Hm2, P.Hm2c, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_182})


V_183 = Vertex(name = 'V_183',
    particles = [P.Hm1, P.Hm1c, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_183})


V_184 = Vertex(name = 'V_184',
    particles = [P.Hm1, P.Hm2c, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_184})


V_185 = Vertex(name = 'V_185',
    particles = [P.Hm2, P.Hm1c, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_185})


V_186 = Vertex(name = 'V_186',
    particles = [P.Hm2, P.Hm2c, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SSVV1],
    couplings = {(0,0):C.GC_186})


V_187 = Vertex(name = 'V_187',
    particles = [P.h1, P.h2, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_187})


V_188 = Vertex(name = 'V_188',
    particles = [P.h1, P.h3, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_188})


V_189 = Vertex(name = 'V_189',
    particles = [P.h1, P.h4, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_189})


V_190 = Vertex(name = 'V_190',
    particles = [P.h1, P.h5, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_190})


V_191 = Vertex(name = 'V_191',
    particles = [P.h1, P.h6, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_191})


V_192 = Vertex(name = 'V_192',
    particles = [P.h2, P.h3, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_192})


V_193 = Vertex(name = 'V_193',
    particles = [P.h2, P.h4, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_193})


V_194 = Vertex(name = 'V_194',
    particles = [P.h2, P.h5, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_194})


V_195 = Vertex(name = 'V_195',
    particles = [P.h2, P.h6, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_195})


V_196 = Vertex(name = 'V_196',
    particles = [P.h3, P.h4, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_196})


V_197 = Vertex(name = 'V_197',
    particles = [P.h3, P.h5, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_197})


V_198 = Vertex(name = 'V_198',
    particles = [P.h3, P.h6, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_198})


V_199 = Vertex(name = 'V_199',
    particles = [P.h4, P.h5, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_199})


V_200 = Vertex(name = 'V_200',
    particles = [P.h4, P.h6, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_200})


V_201 = Vertex(name = 'V_201',
    particles = [P.h5, P.h6, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_201})


V_202 = Vertex(name = 'V_202',
    particles = [P.h1, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_202})


V_203 = Vertex(name = 'V_203',
    particles = [P.h1, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_203})


V_204 = Vertex(name = 'V_204',
    particles = [P.h2, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_204})


V_205 = Vertex(name = 'V_205',
    particles = [P.h2, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_205})


V_206 = Vertex(name = 'V_206',
    particles = [P.h3, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_206})


V_207 = Vertex(name = 'V_207',
    particles = [P.h3, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_207})


V_208 = Vertex(name = 'V_208',
    particles = [P.h4, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_208})


V_209 = Vertex(name = 'V_209',
    particles = [P.h4, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_209})


V_210 = Vertex(name = 'V_210',
    particles = [P.h5, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_210})


V_211 = Vertex(name = 'V_211',
    particles = [P.h5, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_211})


V_212 = Vertex(name = 'V_212',
    particles = [P.h6, P.Hm1, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_212})


V_213 = Vertex(name = 'V_213',
    particles = [P.h6, P.Hm2, P.Wmc],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_213})


V_214 = Vertex(name = 'V_214',
    particles = [P.h1, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_214})


V_215 = Vertex(name = 'V_215',
    particles = [P.h1, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_215})


V_216 = Vertex(name = 'V_216',
    particles = [P.h2, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_216})


V_217 = Vertex(name = 'V_217',
    particles = [P.h2, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_217})


V_218 = Vertex(name = 'V_218',
    particles = [P.h3, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_218})


V_219 = Vertex(name = 'V_219',
    particles = [P.h3, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_219})


V_220 = Vertex(name = 'V_220',
    particles = [P.h4, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_220})


V_221 = Vertex(name = 'V_221',
    particles = [P.h4, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_221})


V_222 = Vertex(name = 'V_222',
    particles = [P.h5, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_222})


V_223 = Vertex(name = 'V_223',
    particles = [P.h5, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_223})


V_224 = Vertex(name = 'V_224',
    particles = [P.h6, P.Hm1c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_224})


V_225 = Vertex(name = 'V_225',
    particles = [P.h6, P.Hm2c, P.Wm],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_225})


V_226 = Vertex(name = 'V_226',
    particles = [P.Hm1, P.Hm1c, P.A],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_226})


V_227 = Vertex(name = 'V_227',
    particles = [P.Hm1, P.Hm2c, P.A],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_227})


V_228 = Vertex(name = 'V_228',
    particles = [P.Hm2, P.Hm1c, P.A],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_228})


V_229 = Vertex(name = 'V_229',
    particles = [P.Hm2, P.Hm2c, P.A],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_229})


V_230 = Vertex(name = 'V_230',
    particles = [P.Hm1, P.Hm1c, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_230})


V_231 = Vertex(name = 'V_231',
    particles = [P.Hm1, P.Hm2c, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_231})


V_232 = Vertex(name = 'V_232',
    particles = [P.Hm2, P.Hm1c, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_232})


V_233 = Vertex(name = 'V_233',
    particles = [P.Hm2, P.Hm2c, P.Z],
    color = ['1'],
    lorentz = [L.SSV1],
    couplings = {(0,0):C.GC_233})


V_234 = Vertex(name = 'V_234',
    particles = [P.h1, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_234})


V_235 = Vertex(name = 'V_235',
    particles = [P.h2, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_235})


V_236 = Vertex(name = 'V_236',
    particles = [P.h3, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_236})


V_237 = Vertex(name = 'V_237',
    particles = [P.h4, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_237})


V_238 = Vertex(name = 'V_238',
    particles = [P.h5, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_238})


V_239 = Vertex(name = 'V_239',
    particles = [P.h6, P.Wmc, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_239})


V_240 = Vertex(name = 'V_240',
    particles = [P.h1, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_240})


V_241 = Vertex(name = 'V_241',
    particles = [P.h2, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_241})


V_242 = Vertex(name = 'V_242',
    particles = [P.h3, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_242})


V_243 = Vertex(name = 'V_243',
    particles = [P.h4, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_243})


V_244 = Vertex(name = 'V_244',
    particles = [P.h5, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_244})


V_245 = Vertex(name = 'V_245',
    particles = [P.h6, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_245})


V_246 = Vertex(name = 'V_246',
    particles = [P.Hm1, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_246})


V_247 = Vertex(name = 'V_247',
    particles = [P.Hm2, P.Wmc, P.A],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_247})


V_248 = Vertex(name = 'V_248',
    particles = [P.Hm1, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_248})


V_249 = Vertex(name = 'V_249',
    particles = [P.Hm2, P.Wmc, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_249})


V_250 = Vertex(name = 'V_250',
    particles = [P.Hm1c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_250})


V_251 = Vertex(name = 'V_251',
    particles = [P.Hm2c, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_251})


V_252 = Vertex(name = 'V_252',
    particles = [P.Hm1c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_252})


V_253 = Vertex(name = 'V_253',
    particles = [P.Hm2c, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.SVV1],
    couplings = {(0,0):C.GC_253})


V_254 = Vertex(name = 'V_254',
    particles = [P.d1bar, P.d1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_254,(0,1):C.GC_255})


V_255 = Vertex(name = 'V_255',
    particles = [P.d1bar, P.d1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_256,(0,1):C.GC_257})


V_256 = Vertex(name = 'V_256',
    particles = [P.d1bar, P.d1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_258,(0,1):C.GC_259})


V_257 = Vertex(name = 'V_257',
    particles = [P.d1bar, P.d1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_260,(0,1):C.GC_261})


V_258 = Vertex(name = 'V_258',
    particles = [P.d1bar, P.d1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_262,(0,1):C.GC_263})


V_259 = Vertex(name = 'V_259',
    particles = [P.d1bar, P.d1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_264,(0,1):C.GC_265})


V_260 = Vertex(name = 'V_260',
    particles = [P.d1bar, P.d2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_266,(0,1):C.GC_267})


V_261 = Vertex(name = 'V_261',
    particles = [P.d1bar, P.d2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_268,(0,1):C.GC_269})


V_262 = Vertex(name = 'V_262',
    particles = [P.d1bar, P.d2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_270,(0,1):C.GC_271})


V_263 = Vertex(name = 'V_263',
    particles = [P.d1bar, P.d2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_272,(0,1):C.GC_273})


V_264 = Vertex(name = 'V_264',
    particles = [P.d1bar, P.d2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_274,(0,1):C.GC_275})


V_265 = Vertex(name = 'V_265',
    particles = [P.d1bar, P.d2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_276,(0,1):C.GC_277})


V_266 = Vertex(name = 'V_266',
    particles = [P.d1bar, P.d3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_278,(0,1):C.GC_279})


V_267 = Vertex(name = 'V_267',
    particles = [P.d1bar, P.d3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_280,(0,1):C.GC_281})


V_268 = Vertex(name = 'V_268',
    particles = [P.d1bar, P.d3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_282,(0,1):C.GC_283})


V_269 = Vertex(name = 'V_269',
    particles = [P.d1bar, P.d3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_284,(0,1):C.GC_285})


V_270 = Vertex(name = 'V_270',
    particles = [P.d1bar, P.d3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_286,(0,1):C.GC_287})


V_271 = Vertex(name = 'V_271',
    particles = [P.d1bar, P.d3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_288,(0,1):C.GC_289})


V_272 = Vertex(name = 'V_272',
    particles = [P.d2bar, P.d1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_290,(0,1):C.GC_291})


V_273 = Vertex(name = 'V_273',
    particles = [P.d2bar, P.d1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_292,(0,1):C.GC_293})


V_274 = Vertex(name = 'V_274',
    particles = [P.d2bar, P.d1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_294,(0,1):C.GC_295})


V_275 = Vertex(name = 'V_275',
    particles = [P.d2bar, P.d1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_296,(0,1):C.GC_297})


V_276 = Vertex(name = 'V_276',
    particles = [P.d2bar, P.d1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_298,(0,1):C.GC_299})


V_277 = Vertex(name = 'V_277',
    particles = [P.d2bar, P.d1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_300,(0,1):C.GC_301})


V_278 = Vertex(name = 'V_278',
    particles = [P.d2bar, P.d2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_302,(0,1):C.GC_303})


V_279 = Vertex(name = 'V_279',
    particles = [P.d2bar, P.d2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_304,(0,1):C.GC_305})


V_280 = Vertex(name = 'V_280',
    particles = [P.d2bar, P.d2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_306,(0,1):C.GC_307})


V_281 = Vertex(name = 'V_281',
    particles = [P.d2bar, P.d2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_308,(0,1):C.GC_309})


V_282 = Vertex(name = 'V_282',
    particles = [P.d2bar, P.d2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_310,(0,1):C.GC_311})


V_283 = Vertex(name = 'V_283',
    particles = [P.d2bar, P.d2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_312,(0,1):C.GC_313})


V_284 = Vertex(name = 'V_284',
    particles = [P.d2bar, P.d3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_314,(0,1):C.GC_315})


V_285 = Vertex(name = 'V_285',
    particles = [P.d2bar, P.d3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_316,(0,1):C.GC_317})


V_286 = Vertex(name = 'V_286',
    particles = [P.d2bar, P.d3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_318,(0,1):C.GC_319})


V_287 = Vertex(name = 'V_287',
    particles = [P.d2bar, P.d3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_320,(0,1):C.GC_321})


V_288 = Vertex(name = 'V_288',
    particles = [P.d2bar, P.d3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_322,(0,1):C.GC_323})


V_289 = Vertex(name = 'V_289',
    particles = [P.d2bar, P.d3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_324,(0,1):C.GC_325})


V_290 = Vertex(name = 'V_290',
    particles = [P.d3bar, P.d1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_326,(0,1):C.GC_327})


V_291 = Vertex(name = 'V_291',
    particles = [P.d3bar, P.d1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_328,(0,1):C.GC_329})


V_292 = Vertex(name = 'V_292',
    particles = [P.d3bar, P.d1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_330,(0,1):C.GC_331})


V_293 = Vertex(name = 'V_293',
    particles = [P.d3bar, P.d1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_332,(0,1):C.GC_333})


V_294 = Vertex(name = 'V_294',
    particles = [P.d3bar, P.d1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_334,(0,1):C.GC_335})


V_295 = Vertex(name = 'V_295',
    particles = [P.d3bar, P.d1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_336,(0,1):C.GC_337})


V_296 = Vertex(name = 'V_296',
    particles = [P.d3bar, P.d2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_338,(0,1):C.GC_339})


V_297 = Vertex(name = 'V_297',
    particles = [P.d3bar, P.d2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_340,(0,1):C.GC_341})


V_298 = Vertex(name = 'V_298',
    particles = [P.d3bar, P.d2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_342,(0,1):C.GC_343})


V_299 = Vertex(name = 'V_299',
    particles = [P.d3bar, P.d2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_344,(0,1):C.GC_345})


V_300 = Vertex(name = 'V_300',
    particles = [P.d3bar, P.d2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_346,(0,1):C.GC_347})


V_301 = Vertex(name = 'V_301',
    particles = [P.d3bar, P.d2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_348,(0,1):C.GC_349})


V_302 = Vertex(name = 'V_302',
    particles = [P.d3bar, P.d3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_350,(0,1):C.GC_351})


V_303 = Vertex(name = 'V_303',
    particles = [P.d3bar, P.d3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_352,(0,1):C.GC_353})


V_304 = Vertex(name = 'V_304',
    particles = [P.d3bar, P.d3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_354,(0,1):C.GC_355})


V_305 = Vertex(name = 'V_305',
    particles = [P.d3bar, P.d3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_356,(0,1):C.GC_357})


V_306 = Vertex(name = 'V_306',
    particles = [P.d3bar, P.d3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_358,(0,1):C.GC_359})


V_307 = Vertex(name = 'V_307',
    particles = [P.d3bar, P.d3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_360,(0,1):C.GC_361})


V_308 = Vertex(name = 'V_308',
    particles = [P.u1bar, P.d1, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_362,(0,1):C.GC_363})


V_309 = Vertex(name = 'V_309',
    particles = [P.u1bar, P.d1, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_364,(0,1):C.GC_365})


V_310 = Vertex(name = 'V_310',
    particles = [P.u1bar, P.d2, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_366,(0,1):C.GC_367})


V_311 = Vertex(name = 'V_311',
    particles = [P.u1bar, P.d2, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_368,(0,1):C.GC_369})


V_312 = Vertex(name = 'V_312',
    particles = [P.u1bar, P.d3, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_370,(0,1):C.GC_371})


V_313 = Vertex(name = 'V_313',
    particles = [P.u1bar, P.d3, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_372,(0,1):C.GC_373})


V_314 = Vertex(name = 'V_314',
    particles = [P.u2bar, P.d1, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_374,(0,1):C.GC_375})


V_315 = Vertex(name = 'V_315',
    particles = [P.u2bar, P.d1, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_376,(0,1):C.GC_377})


V_316 = Vertex(name = 'V_316',
    particles = [P.u2bar, P.d2, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_378,(0,1):C.GC_379})


V_317 = Vertex(name = 'V_317',
    particles = [P.u2bar, P.d2, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_380,(0,1):C.GC_381})


V_318 = Vertex(name = 'V_318',
    particles = [P.u2bar, P.d3, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_382,(0,1):C.GC_383})


V_319 = Vertex(name = 'V_319',
    particles = [P.u2bar, P.d3, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_384,(0,1):C.GC_385})


V_320 = Vertex(name = 'V_320',
    particles = [P.u3bar, P.d1, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_386,(0,1):C.GC_387})


V_321 = Vertex(name = 'V_321',
    particles = [P.u3bar, P.d1, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_388,(0,1):C.GC_389})


V_322 = Vertex(name = 'V_322',
    particles = [P.u3bar, P.d2, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_390,(0,1):C.GC_391})


V_323 = Vertex(name = 'V_323',
    particles = [P.u3bar, P.d2, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_392,(0,1):C.GC_393})


V_324 = Vertex(name = 'V_324',
    particles = [P.u3bar, P.d3, P.Hm1c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_394,(0,1):C.GC_395})


V_325 = Vertex(name = 'V_325',
    particles = [P.u3bar, P.d3, P.Hm2c],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_396,(0,1):C.GC_397})


V_326 = Vertex(name = 'V_326',
    particles = [P.e1bar, P.e1, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_398,(0,1):C.GC_399})


V_327 = Vertex(name = 'V_327',
    particles = [P.e1bar, P.e1, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_400,(0,1):C.GC_401})


V_328 = Vertex(name = 'V_328',
    particles = [P.e1bar, P.e1, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_402,(0,1):C.GC_403})


V_329 = Vertex(name = 'V_329',
    particles = [P.e1bar, P.e1, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_404,(0,1):C.GC_405})


V_330 = Vertex(name = 'V_330',
    particles = [P.e1bar, P.e1, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_406,(0,1):C.GC_407})


V_331 = Vertex(name = 'V_331',
    particles = [P.e1bar, P.e1, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_408,(0,1):C.GC_409})


V_332 = Vertex(name = 'V_332',
    particles = [P.e1bar, P.e2, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_410,(0,1):C.GC_411})


V_333 = Vertex(name = 'V_333',
    particles = [P.e1bar, P.e2, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_412,(0,1):C.GC_413})


V_334 = Vertex(name = 'V_334',
    particles = [P.e1bar, P.e2, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_414,(0,1):C.GC_415})


V_335 = Vertex(name = 'V_335',
    particles = [P.e1bar, P.e2, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_416,(0,1):C.GC_417})


V_336 = Vertex(name = 'V_336',
    particles = [P.e1bar, P.e2, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_418,(0,1):C.GC_419})


V_337 = Vertex(name = 'V_337',
    particles = [P.e1bar, P.e2, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_420,(0,1):C.GC_421})


V_338 = Vertex(name = 'V_338',
    particles = [P.e1bar, P.e3, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_422,(0,1):C.GC_423})


V_339 = Vertex(name = 'V_339',
    particles = [P.e1bar, P.e3, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_424,(0,1):C.GC_425})


V_340 = Vertex(name = 'V_340',
    particles = [P.e1bar, P.e3, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_426,(0,1):C.GC_427})


V_341 = Vertex(name = 'V_341',
    particles = [P.e1bar, P.e3, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_428,(0,1):C.GC_429})


V_342 = Vertex(name = 'V_342',
    particles = [P.e1bar, P.e3, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_430,(0,1):C.GC_431})


V_343 = Vertex(name = 'V_343',
    particles = [P.e1bar, P.e3, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_432,(0,1):C.GC_433})


V_344 = Vertex(name = 'V_344',
    particles = [P.e2bar, P.e1, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_434,(0,1):C.GC_435})


V_345 = Vertex(name = 'V_345',
    particles = [P.e2bar, P.e1, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_436,(0,1):C.GC_437})


V_346 = Vertex(name = 'V_346',
    particles = [P.e2bar, P.e1, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_438,(0,1):C.GC_439})


V_347 = Vertex(name = 'V_347',
    particles = [P.e2bar, P.e1, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_440,(0,1):C.GC_441})


V_348 = Vertex(name = 'V_348',
    particles = [P.e2bar, P.e1, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_442,(0,1):C.GC_443})


V_349 = Vertex(name = 'V_349',
    particles = [P.e2bar, P.e1, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_444,(0,1):C.GC_445})


V_350 = Vertex(name = 'V_350',
    particles = [P.e2bar, P.e2, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_446,(0,1):C.GC_447})


V_351 = Vertex(name = 'V_351',
    particles = [P.e2bar, P.e2, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_448,(0,1):C.GC_449})


V_352 = Vertex(name = 'V_352',
    particles = [P.e2bar, P.e2, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_450,(0,1):C.GC_451})


V_353 = Vertex(name = 'V_353',
    particles = [P.e2bar, P.e2, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_452,(0,1):C.GC_453})


V_354 = Vertex(name = 'V_354',
    particles = [P.e2bar, P.e2, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_454,(0,1):C.GC_455})


V_355 = Vertex(name = 'V_355',
    particles = [P.e2bar, P.e2, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_456,(0,1):C.GC_457})


V_356 = Vertex(name = 'V_356',
    particles = [P.e2bar, P.e3, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_458,(0,1):C.GC_459})


V_357 = Vertex(name = 'V_357',
    particles = [P.e2bar, P.e3, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_460,(0,1):C.GC_461})


V_358 = Vertex(name = 'V_358',
    particles = [P.e2bar, P.e3, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_462,(0,1):C.GC_463})


V_359 = Vertex(name = 'V_359',
    particles = [P.e2bar, P.e3, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_464,(0,1):C.GC_465})


V_360 = Vertex(name = 'V_360',
    particles = [P.e2bar, P.e3, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_466,(0,1):C.GC_467})


V_361 = Vertex(name = 'V_361',
    particles = [P.e2bar, P.e3, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_468,(0,1):C.GC_469})


V_362 = Vertex(name = 'V_362',
    particles = [P.e3bar, P.e1, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_470,(0,1):C.GC_471})


V_363 = Vertex(name = 'V_363',
    particles = [P.e3bar, P.e1, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_472,(0,1):C.GC_473})


V_364 = Vertex(name = 'V_364',
    particles = [P.e3bar, P.e1, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_474,(0,1):C.GC_475})


V_365 = Vertex(name = 'V_365',
    particles = [P.e3bar, P.e1, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_476,(0,1):C.GC_477})


V_366 = Vertex(name = 'V_366',
    particles = [P.e3bar, P.e1, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_478,(0,1):C.GC_479})


V_367 = Vertex(name = 'V_367',
    particles = [P.e3bar, P.e1, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_480,(0,1):C.GC_481})


V_368 = Vertex(name = 'V_368',
    particles = [P.e3bar, P.e2, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_482,(0,1):C.GC_483})


V_369 = Vertex(name = 'V_369',
    particles = [P.e3bar, P.e2, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_484,(0,1):C.GC_485})


V_370 = Vertex(name = 'V_370',
    particles = [P.e3bar, P.e2, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_486,(0,1):C.GC_487})


V_371 = Vertex(name = 'V_371',
    particles = [P.e3bar, P.e2, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_488,(0,1):C.GC_489})


V_372 = Vertex(name = 'V_372',
    particles = [P.e3bar, P.e2, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_490,(0,1):C.GC_491})


V_373 = Vertex(name = 'V_373',
    particles = [P.e3bar, P.e2, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_492,(0,1):C.GC_493})


V_374 = Vertex(name = 'V_374',
    particles = [P.e3bar, P.e3, P.h1],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_494,(0,1):C.GC_495})


V_375 = Vertex(name = 'V_375',
    particles = [P.e3bar, P.e3, P.h2],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_496,(0,1):C.GC_497})


V_376 = Vertex(name = 'V_376',
    particles = [P.e3bar, P.e3, P.h3],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_498,(0,1):C.GC_499})


V_377 = Vertex(name = 'V_377',
    particles = [P.e3bar, P.e3, P.h4],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_500,(0,1):C.GC_501})


V_378 = Vertex(name = 'V_378',
    particles = [P.e3bar, P.e3, P.h5],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_502,(0,1):C.GC_503})


V_379 = Vertex(name = 'V_379',
    particles = [P.e3bar, P.e3, P.h6],
    color = ['1'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_504,(0,1):C.GC_505})


V_380 = Vertex(name = 'V_380',
    particles = [P.nu1bar, P.e1, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_506})


V_381 = Vertex(name = 'V_381',
    particles = [P.nu1bar, P.e1, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_507})


V_382 = Vertex(name = 'V_382',
    particles = [P.nu1bar, P.e2, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_508})


V_383 = Vertex(name = 'V_383',
    particles = [P.nu1bar, P.e2, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_509})


V_384 = Vertex(name = 'V_384',
    particles = [P.nu1bar, P.e3, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_510})


V_385 = Vertex(name = 'V_385',
    particles = [P.nu1bar, P.e3, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_511})


V_386 = Vertex(name = 'V_386',
    particles = [P.nu2bar, P.e1, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_512})


V_387 = Vertex(name = 'V_387',
    particles = [P.nu2bar, P.e1, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_513})


V_388 = Vertex(name = 'V_388',
    particles = [P.nu2bar, P.e2, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_514})


V_389 = Vertex(name = 'V_389',
    particles = [P.nu2bar, P.e2, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_515})


V_390 = Vertex(name = 'V_390',
    particles = [P.nu2bar, P.e3, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_516})


V_391 = Vertex(name = 'V_391',
    particles = [P.nu2bar, P.e3, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_517})


V_392 = Vertex(name = 'V_392',
    particles = [P.nu3bar, P.e1, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_518})


V_393 = Vertex(name = 'V_393',
    particles = [P.nu3bar, P.e1, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_519})


V_394 = Vertex(name = 'V_394',
    particles = [P.nu3bar, P.e2, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_520})


V_395 = Vertex(name = 'V_395',
    particles = [P.nu3bar, P.e2, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_521})


V_396 = Vertex(name = 'V_396',
    particles = [P.nu3bar, P.e3, P.Hm1c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_522})


V_397 = Vertex(name = 'V_397',
    particles = [P.nu3bar, P.e3, P.Hm2c],
    color = ['1'],
    lorentz = [L.FFS2],
    couplings = {(0,0):C.GC_523})


V_398 = Vertex(name = 'V_398',
    particles = [P.u1bar, P.u1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_524,(0,1):C.GC_525})


V_399 = Vertex(name = 'V_399',
    particles = [P.u1bar, P.u1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_526,(0,1):C.GC_527})


V_400 = Vertex(name = 'V_400',
    particles = [P.u1bar, P.u1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_528,(0,1):C.GC_529})


V_401 = Vertex(name = 'V_401',
    particles = [P.u1bar, P.u1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_530,(0,1):C.GC_531})


V_402 = Vertex(name = 'V_402',
    particles = [P.u1bar, P.u1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_532,(0,1):C.GC_533})


V_403 = Vertex(name = 'V_403',
    particles = [P.u1bar, P.u1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_534,(0,1):C.GC_535})


V_404 = Vertex(name = 'V_404',
    particles = [P.u1bar, P.u2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_536,(0,1):C.GC_537})


V_405 = Vertex(name = 'V_405',
    particles = [P.u1bar, P.u2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_538,(0,1):C.GC_539})


V_406 = Vertex(name = 'V_406',
    particles = [P.u1bar, P.u2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_540,(0,1):C.GC_541})


V_407 = Vertex(name = 'V_407',
    particles = [P.u1bar, P.u2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_542,(0,1):C.GC_543})


V_408 = Vertex(name = 'V_408',
    particles = [P.u1bar, P.u2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_544,(0,1):C.GC_545})


V_409 = Vertex(name = 'V_409',
    particles = [P.u1bar, P.u2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_546,(0,1):C.GC_547})


V_410 = Vertex(name = 'V_410',
    particles = [P.u1bar, P.u3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_548,(0,1):C.GC_549})


V_411 = Vertex(name = 'V_411',
    particles = [P.u1bar, P.u3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_550,(0,1):C.GC_551})


V_412 = Vertex(name = 'V_412',
    particles = [P.u1bar, P.u3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_552,(0,1):C.GC_553})


V_413 = Vertex(name = 'V_413',
    particles = [P.u1bar, P.u3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_554,(0,1):C.GC_555})


V_414 = Vertex(name = 'V_414',
    particles = [P.u1bar, P.u3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_556,(0,1):C.GC_557})


V_415 = Vertex(name = 'V_415',
    particles = [P.u1bar, P.u3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_558,(0,1):C.GC_559})


V_416 = Vertex(name = 'V_416',
    particles = [P.u2bar, P.u1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_560,(0,1):C.GC_561})


V_417 = Vertex(name = 'V_417',
    particles = [P.u2bar, P.u1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_562,(0,1):C.GC_563})


V_418 = Vertex(name = 'V_418',
    particles = [P.u2bar, P.u1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_564,(0,1):C.GC_565})


V_419 = Vertex(name = 'V_419',
    particles = [P.u2bar, P.u1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_566,(0,1):C.GC_567})


V_420 = Vertex(name = 'V_420',
    particles = [P.u2bar, P.u1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_568,(0,1):C.GC_569})


V_421 = Vertex(name = 'V_421',
    particles = [P.u2bar, P.u1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_570,(0,1):C.GC_571})


V_422 = Vertex(name = 'V_422',
    particles = [P.u2bar, P.u2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_572,(0,1):C.GC_573})


V_423 = Vertex(name = 'V_423',
    particles = [P.u2bar, P.u2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_574,(0,1):C.GC_575})


V_424 = Vertex(name = 'V_424',
    particles = [P.u2bar, P.u2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_576,(0,1):C.GC_577})


V_425 = Vertex(name = 'V_425',
    particles = [P.u2bar, P.u2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_578,(0,1):C.GC_579})


V_426 = Vertex(name = 'V_426',
    particles = [P.u2bar, P.u2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_580,(0,1):C.GC_581})


V_427 = Vertex(name = 'V_427',
    particles = [P.u2bar, P.u2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_582,(0,1):C.GC_583})


V_428 = Vertex(name = 'V_428',
    particles = [P.u2bar, P.u3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_584,(0,1):C.GC_585})


V_429 = Vertex(name = 'V_429',
    particles = [P.u2bar, P.u3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_586,(0,1):C.GC_587})


V_430 = Vertex(name = 'V_430',
    particles = [P.u2bar, P.u3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_588,(0,1):C.GC_589})


V_431 = Vertex(name = 'V_431',
    particles = [P.u2bar, P.u3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_590,(0,1):C.GC_591})


V_432 = Vertex(name = 'V_432',
    particles = [P.u2bar, P.u3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_592,(0,1):C.GC_593})


V_433 = Vertex(name = 'V_433',
    particles = [P.u2bar, P.u3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_594,(0,1):C.GC_595})


V_434 = Vertex(name = 'V_434',
    particles = [P.u3bar, P.u1, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_596,(0,1):C.GC_597})


V_435 = Vertex(name = 'V_435',
    particles = [P.u3bar, P.u1, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_598,(0,1):C.GC_599})


V_436 = Vertex(name = 'V_436',
    particles = [P.u3bar, P.u1, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_600,(0,1):C.GC_601})


V_437 = Vertex(name = 'V_437',
    particles = [P.u3bar, P.u1, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_602,(0,1):C.GC_603})


V_438 = Vertex(name = 'V_438',
    particles = [P.u3bar, P.u1, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_604,(0,1):C.GC_605})


V_439 = Vertex(name = 'V_439',
    particles = [P.u3bar, P.u1, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_606,(0,1):C.GC_607})


V_440 = Vertex(name = 'V_440',
    particles = [P.u3bar, P.u2, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_608,(0,1):C.GC_609})


V_441 = Vertex(name = 'V_441',
    particles = [P.u3bar, P.u2, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_610,(0,1):C.GC_611})


V_442 = Vertex(name = 'V_442',
    particles = [P.u3bar, P.u2, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_612,(0,1):C.GC_613})


V_443 = Vertex(name = 'V_443',
    particles = [P.u3bar, P.u2, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_614,(0,1):C.GC_615})


V_444 = Vertex(name = 'V_444',
    particles = [P.u3bar, P.u2, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_616,(0,1):C.GC_617})


V_445 = Vertex(name = 'V_445',
    particles = [P.u3bar, P.u2, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_618,(0,1):C.GC_619})


V_446 = Vertex(name = 'V_446',
    particles = [P.u3bar, P.u3, P.h1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_620,(0,1):C.GC_621})


V_447 = Vertex(name = 'V_447',
    particles = [P.u3bar, P.u3, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_622,(0,1):C.GC_623})


V_448 = Vertex(name = 'V_448',
    particles = [P.u3bar, P.u3, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_624,(0,1):C.GC_625})


V_449 = Vertex(name = 'V_449',
    particles = [P.u3bar, P.u3, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_626,(0,1):C.GC_627})


V_450 = Vertex(name = 'V_450',
    particles = [P.u3bar, P.u3, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_628,(0,1):C.GC_629})


V_451 = Vertex(name = 'V_451',
    particles = [P.u3bar, P.u3, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_630,(0,1):C.GC_631})


V_452 = Vertex(name = 'V_452',
    particles = [P.d1bar, P.u1, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_632,(0,1):C.GC_633})


V_453 = Vertex(name = 'V_453',
    particles = [P.d1bar, P.u1, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_634,(0,1):C.GC_635})


V_454 = Vertex(name = 'V_454',
    particles = [P.d1bar, P.u2, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_636,(0,1):C.GC_637})


V_455 = Vertex(name = 'V_455',
    particles = [P.d1bar, P.u2, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_638,(0,1):C.GC_639})


V_456 = Vertex(name = 'V_456',
    particles = [P.d1bar, P.u3, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_640,(0,1):C.GC_641})


V_457 = Vertex(name = 'V_457',
    particles = [P.d1bar, P.u3, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_642,(0,1):C.GC_643})


V_458 = Vertex(name = 'V_458',
    particles = [P.d2bar, P.u1, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_644,(0,1):C.GC_645})


V_459 = Vertex(name = 'V_459',
    particles = [P.d2bar, P.u1, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_646,(0,1):C.GC_647})


V_460 = Vertex(name = 'V_460',
    particles = [P.d2bar, P.u2, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_648,(0,1):C.GC_649})


V_461 = Vertex(name = 'V_461',
    particles = [P.d2bar, P.u2, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_650,(0,1):C.GC_651})


V_462 = Vertex(name = 'V_462',
    particles = [P.d2bar, P.u3, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_652,(0,1):C.GC_653})


V_463 = Vertex(name = 'V_463',
    particles = [P.d2bar, P.u3, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_654,(0,1):C.GC_655})


V_464 = Vertex(name = 'V_464',
    particles = [P.d3bar, P.u1, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_656,(0,1):C.GC_657})


V_465 = Vertex(name = 'V_465',
    particles = [P.d3bar, P.u1, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_658,(0,1):C.GC_659})


V_466 = Vertex(name = 'V_466',
    particles = [P.d3bar, P.u2, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_660,(0,1):C.GC_661})


V_467 = Vertex(name = 'V_467',
    particles = [P.d3bar, P.u2, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_662,(0,1):C.GC_663})


V_468 = Vertex(name = 'V_468',
    particles = [P.d3bar, P.u3, P.Hm1],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_664,(0,1):C.GC_665})


V_469 = Vertex(name = 'V_469',
    particles = [P.d3bar, P.u3, P.Hm2],
    color = ['Identity(1,2)'],
    lorentz = [L.FFS1,L.FFS2],
    couplings = {(0,0):C.GC_666,(0,1):C.GC_667})


V_470 = Vertex(name = 'V_470',
    particles = [P.e1bar, P.nu1, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_668})


V_471 = Vertex(name = 'V_471',
    particles = [P.e1bar, P.nu1, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_669})


V_472 = Vertex(name = 'V_472',
    particles = [P.e1bar, P.nu2, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_670})


V_473 = Vertex(name = 'V_473',
    particles = [P.e1bar, P.nu2, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_671})


V_474 = Vertex(name = 'V_474',
    particles = [P.e1bar, P.nu3, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_672})


V_475 = Vertex(name = 'V_475',
    particles = [P.e1bar, P.nu3, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_673})


V_476 = Vertex(name = 'V_476',
    particles = [P.e2bar, P.nu1, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_674})


V_477 = Vertex(name = 'V_477',
    particles = [P.e2bar, P.nu1, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_675})


V_478 = Vertex(name = 'V_478',
    particles = [P.e2bar, P.nu2, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_676})


V_479 = Vertex(name = 'V_479',
    particles = [P.e2bar, P.nu2, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_677})


V_480 = Vertex(name = 'V_480',
    particles = [P.e2bar, P.nu3, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_678})


V_481 = Vertex(name = 'V_481',
    particles = [P.e2bar, P.nu3, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_679})


V_482 = Vertex(name = 'V_482',
    particles = [P.e3bar, P.nu1, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_680})


V_483 = Vertex(name = 'V_483',
    particles = [P.e3bar, P.nu1, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_681})


V_484 = Vertex(name = 'V_484',
    particles = [P.e3bar, P.nu2, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_682})


V_485 = Vertex(name = 'V_485',
    particles = [P.e3bar, P.nu2, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_683})


V_486 = Vertex(name = 'V_486',
    particles = [P.e3bar, P.nu3, P.Hm1],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_684})


V_487 = Vertex(name = 'V_487',
    particles = [P.e3bar, P.nu3, P.Hm2],
    color = ['1'],
    lorentz = [L.FFS1],
    couplings = {(0,0):C.GC_685})


V_488 = Vertex(name = 'V_488',
    particles = [P.d1bar, P.d1, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_686,(0,0):C.GC_687})


V_489 = Vertex(name = 'V_489',
    particles = [P.d2bar, P.d2, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_688,(0,0):C.GC_689})


V_490 = Vertex(name = 'V_490',
    particles = [P.d3bar, P.d3, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_690,(0,0):C.GC_691})


V_491 = Vertex(name = 'V_491',
    particles = [P.d1bar, P.d1, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_692,(0,0):C.GC_693})


V_492 = Vertex(name = 'V_492',
    particles = [P.d2bar, P.d2, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_694,(0,0):C.GC_695})


V_493 = Vertex(name = 'V_493',
    particles = [P.d3bar, P.d3, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_696,(0,0):C.GC_697})


V_494 = Vertex(name = 'V_494',
    particles = [P.d1bar, P.d1, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_698,(0,0):C.GC_699})


V_495 = Vertex(name = 'V_495',
    particles = [P.d2bar, P.d2, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_700,(0,0):C.GC_701})


V_496 = Vertex(name = 'V_496',
    particles = [P.d3bar, P.d3, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_702,(0,0):C.GC_703})


V_497 = Vertex(name = 'V_497',
    particles = [P.u1bar, P.d1, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_704})


V_498 = Vertex(name = 'V_498',
    particles = [P.u1bar, P.d2, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_705})


V_499 = Vertex(name = 'V_499',
    particles = [P.u1bar, P.d3, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_706})


V_500 = Vertex(name = 'V_500',
    particles = [P.u2bar, P.d1, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_707})


V_501 = Vertex(name = 'V_501',
    particles = [P.u2bar, P.d2, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_708})


V_502 = Vertex(name = 'V_502',
    particles = [P.u2bar, P.d3, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_709})


V_503 = Vertex(name = 'V_503',
    particles = [P.u3bar, P.d1, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_710})


V_504 = Vertex(name = 'V_504',
    particles = [P.u3bar, P.d2, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_711})


V_505 = Vertex(name = 'V_505',
    particles = [P.u3bar, P.d3, P.Wmc],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_712})


V_506 = Vertex(name = 'V_506',
    particles = [P.e1bar, P.e1, P.A],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_713,(0,0):C.GC_714})


V_507 = Vertex(name = 'V_507',
    particles = [P.e2bar, P.e2, P.A],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_715,(0,0):C.GC_716})


V_508 = Vertex(name = 'V_508',
    particles = [P.e3bar, P.e3, P.A],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_717,(0,0):C.GC_718})


V_509 = Vertex(name = 'V_509',
    particles = [P.e1bar, P.e1, P.Z],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_719,(0,0):C.GC_720})


V_510 = Vertex(name = 'V_510',
    particles = [P.e2bar, P.e2, P.Z],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_721,(0,0):C.GC_722})


V_511 = Vertex(name = 'V_511',
    particles = [P.e3bar, P.e3, P.Z],
    color = ['1'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_723,(0,0):C.GC_724})


V_512 = Vertex(name = 'V_512',
    particles = [P.nu1bar, P.e1, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_725})


V_513 = Vertex(name = 'V_513',
    particles = [P.nu1bar, P.e2, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_726})


V_514 = Vertex(name = 'V_514',
    particles = [P.nu1bar, P.e3, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_727})


V_515 = Vertex(name = 'V_515',
    particles = [P.nu2bar, P.e1, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_728})


V_516 = Vertex(name = 'V_516',
    particles = [P.nu2bar, P.e2, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_729})


V_517 = Vertex(name = 'V_517',
    particles = [P.nu2bar, P.e3, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_730})


V_518 = Vertex(name = 'V_518',
    particles = [P.nu3bar, P.e1, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_731})


V_519 = Vertex(name = 'V_519',
    particles = [P.nu3bar, P.e2, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_732})


V_520 = Vertex(name = 'V_520',
    particles = [P.nu3bar, P.e3, P.Wmc],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_733})


V_521 = Vertex(name = 'V_521',
    particles = [P.u1bar, P.u1, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_734,(0,0):C.GC_735})


V_522 = Vertex(name = 'V_522',
    particles = [P.u2bar, P.u2, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_736,(0,0):C.GC_737})


V_523 = Vertex(name = 'V_523',
    particles = [P.u3bar, P.u3, P.g],
    color = ['T(3,2,1)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_738,(0,0):C.GC_739})


V_524 = Vertex(name = 'V_524',
    particles = [P.u1bar, P.u1, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_740,(0,0):C.GC_741})


V_525 = Vertex(name = 'V_525',
    particles = [P.u2bar, P.u2, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_742,(0,0):C.GC_743})


V_526 = Vertex(name = 'V_526',
    particles = [P.u3bar, P.u3, P.A],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_744,(0,0):C.GC_745})


V_527 = Vertex(name = 'V_527',
    particles = [P.d1bar, P.u1, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_746})


V_528 = Vertex(name = 'V_528',
    particles = [P.d1bar, P.u2, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_747})


V_529 = Vertex(name = 'V_529',
    particles = [P.d1bar, P.u3, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_748})


V_530 = Vertex(name = 'V_530',
    particles = [P.d2bar, P.u1, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_749})


V_531 = Vertex(name = 'V_531',
    particles = [P.d2bar, P.u2, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_750})


V_532 = Vertex(name = 'V_532',
    particles = [P.d2bar, P.u3, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_751})


V_533 = Vertex(name = 'V_533',
    particles = [P.d3bar, P.u1, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_752})


V_534 = Vertex(name = 'V_534',
    particles = [P.d3bar, P.u2, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_753})


V_535 = Vertex(name = 'V_535',
    particles = [P.d3bar, P.u3, P.Wm],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_754})


V_536 = Vertex(name = 'V_536',
    particles = [P.u1bar, P.u1, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_755,(0,0):C.GC_756})


V_537 = Vertex(name = 'V_537',
    particles = [P.u2bar, P.u2, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_757,(0,0):C.GC_758})


V_538 = Vertex(name = 'V_538',
    particles = [P.u3bar, P.u3, P.Z],
    color = ['Identity(1,2)'],
    lorentz = [L.FFV2,L.FFV3],
    couplings = {(0,1):C.GC_759,(0,0):C.GC_760})


V_539 = Vertex(name = 'V_539',
    particles = [P.e1bar, P.nu1, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_761})


V_540 = Vertex(name = 'V_540',
    particles = [P.e1bar, P.nu2, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_762})


V_541 = Vertex(name = 'V_541',
    particles = [P.e1bar, P.nu3, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_763})


V_542 = Vertex(name = 'V_542',
    particles = [P.e2bar, P.nu1, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_764})


V_543 = Vertex(name = 'V_543',
    particles = [P.e2bar, P.nu2, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_765})


V_544 = Vertex(name = 'V_544',
    particles = [P.e2bar, P.nu3, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_766})


V_545 = Vertex(name = 'V_545',
    particles = [P.e3bar, P.nu1, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_767})


V_546 = Vertex(name = 'V_546',
    particles = [P.e3bar, P.nu2, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_768})


V_547 = Vertex(name = 'V_547',
    particles = [P.e3bar, P.nu3, P.Wm],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_769})


V_548 = Vertex(name = 'V_548',
    particles = [P.nu1bar, P.nu1, P.Z],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_770})


V_549 = Vertex(name = 'V_549',
    particles = [P.nu2bar, P.nu2, P.Z],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_771})


V_550 = Vertex(name = 'V_550',
    particles = [P.nu3bar, P.nu3, P.Z],
    color = ['1'],
    lorentz = [L.FFV3],
    couplings = {(0,0):C.GC_772})


V_551 = Vertex(name = 'V_551',
    particles = [P.g, P.g, P.g],
    color = ['f(1,2,3)'],
    lorentz = [L.VVV1],
    couplings = {(0,0):C.GC_773})


V_552 = Vertex(name = 'V_552',
    particles = [P.Wmc, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.VVV1],
    couplings = {(0,0):C.GC_774})


V_553 = Vertex(name = 'V_553',
    particles = [P.Wmc, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.VVV1],
    couplings = {(0,0):C.GC_775})


V_554 = Vertex(name = 'V_554',
    particles = [P.g, P.g, P.g, P.g],
    color = ['f(-1,1,4)*f(-1,2,3)', 'f(-1,1,3)*f(-1,2,4)', 'f(-1,1,2)*f(-1,3,4)'],
    lorentz = [L.VVVV1,L.VVVV2,L.VVVV3],
    couplings = {(0,0):C.GC_776,(1,0):C.GC_777,(0,1):C.GC_778,(2,1):C.GC_779,(1,2):C.GC_780,(2,2):C.GC_781})


V_555 = Vertex(name = 'V_555',
    particles = [P.Wmc, P.A, P.A, P.Wm],
    color = ['1'],
    lorentz = [L.VVVV1,L.VVVV2,L.VVVV3],
    couplings = {(0,0):C.GC_782,(0,1):C.GC_783,(0,2):C.GC_784})


V_556 = Vertex(name = 'V_556',
    particles = [P.Wmc, P.A, P.Wm, P.Z],
    color = ['1'],
    lorentz = [L.VVVV1,L.VVVV2,L.VVVV3],
    couplings = {(0,0):C.GC_785,(0,1):C.GC_786,(0,2):C.GC_787})


V_557 = Vertex(name = 'V_557',
    particles = [P.Wmc, P.Wmc, P.Wm, P.Wm],
    color = ['1'],
    lorentz = [L.VVVV1,L.VVVV2,L.VVVV3],
    couplings = {(0,0):C.GC_788,(0,1):C.GC_789,(0,2):C.GC_790})


V_558 = Vertex(name = 'V_558',
    particles = [P.Wmc, P.Wm, P.Z, P.Z],
    color = ['1'],
    lorentz = [L.VVVV1,L.VVVV2,L.VVVV3],
    couplings = {(0,0):C.GC_791,(0,1):C.GC_792,(0,2):C.GC_793})


V_559 = Vertex(name = 'V_559',
    particles = [P.A, P.A, P.h2],
    color = ['1'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_794})


V_560 = Vertex(name = 'V_560',
    particles = [P.g, P.g, P.h2],
    color = ['Identity(1,2)'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_795})


V_561 = Vertex(name = 'V_561',
    particles = [P.A, P.A, P.h3],
    color = ['1'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_796})


V_562 = Vertex(name = 'V_562',
    particles = [P.g, P.g, P.h3],
    color = ['Identity(1,2)'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_797})


V_563 = Vertex(name = 'V_563',
    particles = [P.A, P.A, P.h4],
    color = ['1'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_798})


V_564 = Vertex(name = 'V_564',
    particles = [P.g, P.g, P.h4],
    color = ['Identity(1,2)'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_799})


V_565 = Vertex(name = 'V_565',
    particles = [P.A, P.A, P.h5],
    color = ['1'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_800})


V_566 = Vertex(name = 'V_566',
    particles = [P.g, P.g, P.h5],
    color = ['Identity(1,2)'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_801})


V_567 = Vertex(name = 'V_567',
    particles = [P.A, P.A, P.h6],
    color = ['1'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_802})


V_568 = Vertex(name = 'V_568',
    particles = [P.g, P.g, P.h6],
    color = ['Identity(1,2)'],
    lorentz = [L.VVS99],
    couplings = {(0,0):C.GC_803})


