%% animate macarena data
apar = mcinitanimpar
apar.conn = [1 2; 3 2; 7 2; 4 3; 5 4; 6 5; 8 7; 9 8; 10 9; 11 2; 12 11; 13 12; 14 12; 15 13; 17 15; 19 17; 16 14; 18 16; 20 18;]; %segments
apar.cwidth = 4;
apar.colors = 'kwwww'; %colors of background, markers, bones, numbers 
apar.showmnum = 1;
apar.animate = 1; %creates a video
apar.videoformat = 'mp4';


%% animate from file single
test_ex_fn = '/path/to/file.tsv';
test_ex = mcread(test_ex_fn);
apar.output = test_ex_fn(1:end-4);
mcanimate(test_ex, apar);