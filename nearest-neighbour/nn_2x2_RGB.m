function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    redChannel = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    greenChannel = img(:, :, 2);
    % TODO: extrace canalul albastru al imaginii
    blueChannel = img(:, :, 3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    outred = nn_2x2(redChannel, STEP);
    outgreen = nn_2x2(greenChannel, STEP);
    outblue = nn_2x2(blueChannel, STEP);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3, outred, outgreen, outblue);
endfunction
