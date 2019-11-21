function p = speedReducer(x)

    c1 = (27 / (x(1) * x(2)^2 * x(3))) - 1;
    c2 = (397.5 / (x(1) * x(2)^2 * x(3)^2)) - 1;
    c3 = ((1.93 * x(4)^3) / (x(2) * x(3) * x(6)^4)) - 1;
    c4 = ((1.93 * x(5)^3) / (x(2) * x(3) * x(7)^4)) - 1;
    c5 = (sqrt((745 * (x(4) / (x(2) * x(3))))^2 + 16.9 * 1E6) / (110 * x(6)^3)) - 1;
    c6 = (sqrt((745 * (x(5) / (x(2) * x(3))))^2 + 157.5 * 1E6) / (85 * x(7)^3)) - 1;
    c7 = ((x(2) * x(3)) / 40) - 1;
    c8 = ((5 * x(2)) / x(1)) - 1;
    c9 = (x(1) / (12 * x(2))) - 1;
    c10 = ((1.5 * x(6) + 1.9) / x(4)) - 1;
    c11 = ((1.1 * x(7) + 1.9) / x(5)) - 1;
    p = get_penalty([c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11]);
    if p>0
        p = inf;
    end
    
end