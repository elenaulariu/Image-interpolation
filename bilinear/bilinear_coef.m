function a = bilinear_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2)
    % =========================================================================
    
    % TODO: calculeaza matricea A
    A(1 : 4, 1) = ones(4, 1);
    A(1 : 4, 2) = [x1; x1; x2; x2];
    A(1 : 4, 3) = [y1; y2; y1; y2];
    A(1 : 4, 4) = [x1*y1; x1*y2; x2*y1; x2*y2];
    % TODO: calculeaza vectorul b    
    b = [f(y1,x1); f(y2,x1); f(y1,x2); f(y2,x2)];
    % TODO: calculeaza coeficientii
    a = inv(A)*b;
endfunction
