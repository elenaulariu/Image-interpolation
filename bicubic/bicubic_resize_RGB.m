function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    redChannel = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    greenChannel = img(:, :, 2);
    % TODO: extrace canalul albastru al imaginii
    blueChannel = img(:, :, 3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    outred = bicubic_resize(redChannel, p, q);
    outgreen = bicubic_resize(greenChannel, p, q);
    outblue = bicubic_resize(blueChannel, p, q);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3, outred, outgreen, outblue);
endfunction