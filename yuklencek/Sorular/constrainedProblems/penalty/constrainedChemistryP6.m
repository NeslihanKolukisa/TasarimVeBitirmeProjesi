function p = constrainedChemistryP6(x)
    c1 = ( 105 − 4*x(1) − 5*x(2) + 3*x(7) − 9*x(8) ) * -1;
    c2 = ( 8*x(2) + 17*x(7) − 2*x(8) − 10*x(1) ) * -1;
    c3 = ( 120 + 7*x(4) − 3*(x(1) − 2)^2 − 4*(x(2) − 3)^2 - 2*x(3)^2 ) * -1;
    c4 = ( 2*x(1)*x(2) + 6*x(6) − 14*x(5) − 2*(x(2) − 2)^2 - x(1)^2  ) * -1;
    c5 = ( 3*x(1) − 6*x(2) − 12*(x(9) − 8)^2 + 7*x(10) ) * -1;
    c6 = ( x(6) + 30 − 0.5*(x(1) − 8)^2 − 2*(x(2) − 4)^2 - 3*x(5)^2 ) * -1;
    p = get_penalty([c1, c2, c3, c4, c5, c6]);
    if p>0
        p = inf;
    end
end