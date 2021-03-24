
      seqfile = 13_Primates_TRIM72_all_intron_aligned_clustalW.fasta
     treefile = 13_Primates.tre
      outfile = mlb       * main result file

        noisy = 3   * 0,1,2,3: how much rubbish on the screen
      verbose = 0   * 1: detailed output, 0: concise output
      runmode = 0   * 0: user tree;  1: semi-automatic;  2: automatic
                    * 3: StepwiseAddition; (4,5):PerturbationNNI

        model = 4   * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85, 5:T92, 6:TN93, 7:REV, 8:UNREST, 9:REVu; 10:UNRESTu * REV = GTR
*        model = 10 [5 (AC CA) (AG GA) (AT TA) (CG GC) (CT TC)] /* SYM */

*        ndata = 0
        Mgene = 0   * 0:rates, 1:separate; 2:diff pi, 3:diff kapa, 4:all diff

        clock = 0   * 0:no clock, 1:clock; 2:local clock; 3:CombinedAnalysis
    fix_kappa = 0   * 0: estimate kappa; 1: fix kappa at value below; 2: kappa for branches
        kappa = 5   * initial or fixed kappa

    fix_alpha = 0   * 0: estimate alpha; 1: fix alpha at value below
        alpha = 0.5   * initial or fixed alpha, 0:infinity (constant rate)
       Malpha = 0   * 1: different alpha's for genes, 0: one alpha
        ncatG = 5   * # of categories in the dG, AdG, or nparK models of rates
        nparK = 0   * rate-class models. 1:rK, 2:rK&fK, 3:rK&MK(1/K), 4:rK&MK

        nhomo = 0   * 0 & 1: homogeneous, 2: kappa for branches, 3: N1, 4: N2
        getSE = 1   * 0: don't want them, 1: want S.E.s of estimates
 RateAncestor = 1   * (0,1,2): rates (alpha>0) or ancestral states

   Small_Diff = 1e-7
    cleandata = 0   * remove sites with ambiguity data (1:yes, 0:no)?
*        icode = 0   * (with RateAncestor=1. try "GC" in data,model=4,Mgene=4)
  fix_blength = 0  * 0: ignore, -1: random, 1: initial, 2: fixed, 3: proportional
       method = 0   * Optimization method 0: simultaneous; 1: one branch a time
