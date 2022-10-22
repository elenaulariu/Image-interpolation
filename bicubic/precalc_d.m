function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    I = double(I);
    % TODO: calculeaza matricea cu derivate fata de x Ix
    for y = 1 : n
      for x = 1 : m
        if y == 1 || y == n 
          Ix(x, y) = 0;
        else
          Ix(x, y) = fx(I, x, y);
        endif
      endfor
    endfor   
    % TODO: calculeaza matricea cu derivate fata de y Iy
    for y = 1 : n
      for x = 1 : m
        if x == 1 || x == m
          Iy(x, y) = 0;
        else
          Iy(x, y) = fy(I, x, y);
        endif
      endfor
    endfor  
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    for y = 1 : n
      for x = 1 : m
        if x == 1 || x == m || y == 1 || y == n
          Ixy(x, y) = 0;
        else
          Ixy(x, y) = fxy(I, x, y);
        endif
      endfor
    endfor  
endfunction