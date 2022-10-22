function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    C = [1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    B = zeros(4);
    B(1, :) = [f(y1, x1) f(y1, x2) Ix(y1, x1) Ix(y1, x2)];
    B(2, :) = [f(y2, x1) f(y2, x2) Ix(y2, x1) Ix(y2, x2)];
    B(3, :) = [Iy(y1, x1) Iy(y1, x2) Ixy(y1, x1) Ixy(y1, x2)];
    B(4, :) = [Iy(y2, x1) Iy(y2, x2) Ixy(y2, x1) Ixy(y2, x2)];
    D = C.';
    % TODO: converteste matricile intermediare la double
    C = double(C);
    B = double(B);
    D = double(D);
    % TODO: calculeaza matricea finala
    A = (C*B*D).';
endfunction