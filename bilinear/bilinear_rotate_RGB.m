function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    redChannel = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    greenChannel = img(:, :, 2);
    % TODO: extrace canalul albastru al imaginii
    blueChannel = img(:, :, 3);

    % TODO: aplică rotația pe fiecare canal al imaginii
    outred = bilinear_rotate(redChannel, rotation_angle);
    outgreen = bilinear_rotate(greenChannel, rotation_angle);
    outblue = bilinear_rotate(blueChannel, rotation_angle);
    % TODO: reconstruiește imaginea RGB finala (hint: cat)
    out = cat(3, outred, outgreen, outblue);
endfunction