function M = getM(lengths, kappas, ks, fis)

eSinSq = @(k_w, lengths, kappa_b1_signed, kappa_b2_signed, fi_2_signed, fi_3_signed) exp(2*kappa_b1_signed*lengths.b1 + 2*kappa_b2_signed*lengths.b2)*sin(k_w*lengths.w + fi_2_signed + fi_3_signed).^2;
e2SinSinCos = @(kappa_signed, b, sin1, sin2, cosFi) -2*exp(2*kappa_signed*b)*sin1*sin2*cosFi;
sin2SinCos = @(k_w, lengths, fi_1, fi_2_signed, fi_3, fi_4_signed) 2*sin(k_w*lengths.w + fi_2_signed + fi_3)*sin(k_w*lengths.w - fi_2_signed - fi_3)*cos(2*(fi_1+fi_4_signed));

e1 = eSinSq(ks.w, lengths, kappas.b1, kappas.b2, -fis.fi_2, -fis.fi_3);
e2 = eSinSq(ks.w, lengths, kappas.b1, -kappas.b2, -fis.fi_2, fis.fi_3);
e3 = eSinSq(ks.w, lengths, -kappas.b1, kappas.b2, fis.fi_2, -fis.fi_3);
e4 = eSinSq(ks.w, lengths, -kappas.b1, -kappas.b2, fis.fi_2, fis.fi_3);

thisSin1 = sin(ks.w*lengths.w - fis.fi_2 - fis.fi_3);
thisSin2 = sin(ks.w*lengths.w - fis.fi_2 + fis.fi_3);
esinsincos1 = e2SinSinCos(kappas.b1, lengths.b1, thisSin1, thisSin2, cos(2*fis.fi_1)); 

thisSin1 = thisSin1;
thisSin2 = sin(ks.w*lengths.w + fis.fi_2 - fis.fi_3);
esinsincos2 = e2SinSinCos(kappas.b2, lengths.b2, thisSin1, thisSin2, cos(2*fis.fi_4)); 

thisSin1 = sin(ks.w*lengths.w + fis.fi_2 + fis.fi_3);
thisSin2 = thisSin2;
esinsincos3 = e2SinSinCos(-kappas.b1, lengths.b1, thisSin1, thisSin2, cos(2*fis.fi_1)); 

thisSin1 = thisSin1;
thisSin2 = sin(ks.w*lengths.w - fis.fi_2 + fis.fi_3);
esinsincos4 = e2SinSinCos(-kappas.b2, lengths.b2, thisSin1, thisSin2, cos(2*fis.fi_4)); 

sinsincos1 = sin2SinCos(ks.w, lengths, fis.fi_1, fis.fi_2, fis.fi_3, fis.fi_4);
sinsincos2 = sin2SinCos(ks.w, lengths, fis.fi_1, -fis.fi_2, fis.fi_3, -fis.fi_4);

M = e1+e2+e3+e4+esinsincos1+esinsincos2+esinsincos3+esinsincos4+sinsincos1+sinsincos2;
end

