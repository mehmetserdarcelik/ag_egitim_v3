clear;


kisi = "serdar";
%kisi = "kursat";

hareket = "ac-kapa";
%hareket = "bas parmak sabit";
%hareket = "ekstensiyon";

kisi = char(kisi);
hareket = char(hareket);

pencere = [10;20;20;20;20;50;50;50;50;50;50;50;50;50;100;100;100;100;100;100;100;100;100;100;100;100;100;100;100;100];   % pencere uzunlukları
adim = [1;1;5;5;5;1;1;1;5;5;5;10;10;10;1;1;1;1;5;5;5;5;10;10;10;10;20;20;20;20]; % adım uzunlukları
sicrama = [1;1;1;5;10;1;10;25;1;10;25;1;10;25;1;10;25;50;1;10;25;50;1;10;25;50;1;10;25;50]; % pencere içi sıçrama miktarı
h1 = zeros(30,1);
h2 = zeros(30,1);
h3 = zeros(30,1);
h4 = zeros(30,1);
h5 = zeros(30,1);
h6 = zeros(30,1);
h7 = zeros(30,1);
h8 = zeros(30,1);
h9 = zeros(30,1);
h10 = zeros(30,1);
h11 = zeros(30,1);
h12 = zeros(30,1);


%% Fig üzerinden her bir ağ için en düşük rmse değeri veren noron sayısını bulup h(m) değerine yazdırıyoruz. Validation değerini istediğimiz için dataObjs(2) yaptık

for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\1 emg_alt_vs_aci\' kisi '\EMGaltVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h1(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\2 emg_orta_vs_aci\' kisi '\EMGortaVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h2(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\3 emg_ust_vs_aci\' kisi '\EMGustVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h3(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ortEMGaltVEortACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h4(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ortEMGortaVEortACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h5(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ortEMGustVEortACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h6(m)] = min(y);

end



for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\rmsEMGaltVErmsACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h7(m)] = min(y);

end



for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\rmsEMGortaVErmsACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h8(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\rmsEMGustVErmsACI.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h9(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\ucFEATaltVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h10(m)] = min(y);

end


for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\ucFEATortaVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h11(m)] = min(y(1:20));

end



for m = 1:30

    fig = openfig(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\optimal_noron_sayisi\pencere' num2str(pencere(m)) '_step' num2str(adim(m)) '_leap' num2str(sicrama(m)) '\' hareket '\12 uc_feature_ust_vs_aci\' kisi '\ucFEATustVEaci.fig'], 'invisible');
    dataObjs = findobj(fig,'-property','YData');
    y = dataObjs(2).YData;
    [deger, h12(m)] = min(y);

end




rmse_train = zeros(30,12);
rmse_test = zeros(30,12);
rmse_val = zeros(30,12);
nrmse_train = zeros(30,12);
nrmse_test = zeros(30,12);
nrmse_val = zeros(30,12);
R_kare_train = zeros(30,12);
R_kare_test = zeros(30,12);
R_kare_val = zeros(30,12);



for m = 1:19

win = pencere(m); 
step = adim(m);
leap = sicrama(m);

H1 = h1(m);
H2 = h2(m);
H3 = h3(m);
H4 = h4(m);
H5 = h5(m);
H6 = h6(m);
H7 = h7(m);
H8 = h8(m);
H9 = h9(m);
H10 = h10(m);
H11 = h11(m);
H12 = h12(m);


cpu_aci = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_aci\' kisi '\aci.xlsx'],'ReadVariableNames',0);
cpu_mean_aci = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_aci_mean\' kisi '\aci_mean.xlsx'],'ReadVariableNames',0);
cpu_rms_aci = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_aci_rms\' kisi '\aci_rms.xlsx'],'ReadVariableNames',0);

cpu_emg_alt = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_alt\' kisi '\emg_alt.xlsx'],'ReadVariableNames',0);
cpu_emg_orta = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_orta\' kisi '\emg_orta.xlsx'],'ReadVariableNames',0);
cpu_emg_ust = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_ust\' kisi '\emg_ust.xlsx'],'ReadVariableNames',0);
cpu_mean_emg_alt = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_mean_alt\' kisi '\mean_emg_alt.xlsx'],'ReadVariableNames',0);
cpu_mean_emg_orta = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_mean_orta\' kisi '\mean_emg_orta.xlsx'],'ReadVariableNames',0);
cpu_mean_emg_ust = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_mean_ust\' kisi '\mean_emg_ust.xlsx'],'ReadVariableNames',0);
cpu_rms_emg_alt = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_rms_alt\' kisi '\rms_emg_alt.xlsx'],'ReadVariableNames',0);
cpu_rms_emg_orta = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_rms_orta\' kisi '\rms_emg_orta.xlsx'],'ReadVariableNames',0);
cpu_rms_emg_ust = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\tum_rc_emg_rms_ust\' kisi '\rms_emg_ust.xlsx'],'ReadVariableNames',0);
cpu_uc_feature_alt = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\uc_features_emg_mean_rms_alt\' kisi '\uc_features_alt.xlsx'],'ReadVariableNames',0);
cpu_uc_feature_orta = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\uc_features_emg_mean_rms_orta\' kisi '\uc_features_orta.xlsx'],'ReadVariableNames',0);
cpu_uc_feature_ust = readtable(['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\3 Kaydirilmis_Kumelenmis_Veriler\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\uc_features_emg_mean_rms_ust\' kisi '\uc_features_ust.xlsx'],'ReadVariableNames',0);






%% Kurulacak ağlar

% 1) emg_alt - aci (tum pencerelerle 30 adet)
% 2) emg_orta - aci (tum pencerelerle 30 adet)
% 3) emg_ust - aci (tum pencerelerle 30 adet)
% 4) mean_emg_alt - mean_aci (tum pencerelerle 30 adet)
% 5) mean_emg_orta - mean_aci (tum pencerelerle 30 adet)
% 6) mean_emg_ust - mean_aci (tum pencerelerle 30 adet)
% 7) rms_emg_alt - rms_aci (tum pencerelerle 30 adet)
% 8) rms_emg_orta - rms_aci (tum pencerelerle 30 adet)
% 9) rms_emg_ust - rms_aci (tum pencerelerle 30 adet)
% 10) uc_feature_alt - aci (tum pencerelerle 30 adet)
% 11) uc_feature_orta - aci (tum pencerelerle 30 adet)
% 12) uc_feature_ust - aci (tum pencerelerle 30 adet)

%% Ağ çıkış verileri

cpu_aci = table2array(cpu_aci);
cpu_mean_aci = table2array(cpu_mean_aci);
cpu_rms_aci = table2array(cpu_rms_aci);

%% Ağ giriş verileri

cpu_emg_alt = table2array(cpu_emg_alt); 
cpu_emg_orta = table2array(cpu_emg_orta);
cpu_emg_ust = table2array(cpu_emg_ust);
cpu_mean_emg_alt = table2array(cpu_mean_emg_alt);
cpu_mean_emg_orta = table2array(cpu_mean_emg_orta);
cpu_mean_emg_ust = table2array(cpu_mean_emg_ust);
cpu_rms_emg_alt = table2array(cpu_rms_emg_alt);
cpu_rms_emg_orta = table2array(cpu_rms_emg_orta);
cpu_rms_emg_ust = table2array(cpu_rms_emg_ust);
cpu_uc_feature_alt = table2array(cpu_uc_feature_alt);
cpu_uc_feature_orta = table2array(cpu_uc_feature_orta);
cpu_uc_feature_ust = table2array(cpu_uc_feature_ust);



aci = gpuArray(cpu_aci);
mean_aci = gpuArray(cpu_mean_aci);
rms_aci = gpuArray(cpu_rms_aci);
emg_alt = gpuArray(cpu_emg_alt);
emg_orta = gpuArray(cpu_emg_orta);
emg_ust = gpuArray(cpu_emg_ust);
mean_emg_alt = gpuArray(cpu_mean_emg_alt);
mean_emg_orta = gpuArray(cpu_mean_emg_orta);
mean_emg_ust = gpuArray(cpu_mean_emg_ust);
rms_emg_alt = gpuArray(cpu_rms_emg_alt);
rms_emg_orta = gpuArray(cpu_rms_emg_orta);
rms_emg_ust = gpuArray(cpu_rms_emg_ust);
uc_feature_alt  = gpuArray(cpu_uc_feature_alt);
uc_feature_orta  = gpuArray(cpu_uc_feature_orta);
uc_feature_ust  = gpuArray(cpu_uc_feature_ust);

%% Giriş Verilerinin sütün sayisini öğrendik

[row_emg_alt, column_emg_alt] = size(emg_alt);
[row_emg_orta, column_emg_orta] = size(emg_orta);
[row_emg_ust, column_emg_ust] = size(emg_ust);
[row_mean_emg_alt, column_mean_emg_alt] = size(mean_emg_alt);
[row_mean_emg_orta, column_mean_emg_orta] = size(mean_emg_orta);
[row_mean_emg_ust, column_mean_emg_ust] = size(mean_emg_ust);
[row_rms_emg_alt, column_rms_emg_alt] = size(rms_emg_alt);
[row_rms_emg_orta, column_rms_emg_orta] = size(rms_emg_orta);
[row_rms_emg_ust, column_rms_emg_ust] = size(rms_emg_ust);
[row_uc_feature_alt, column_uc_feature_alt] = size(uc_feature_alt);
[row_uc_feature_orta, column_uc_feature_orta] = size(uc_feature_orta);
[row_uc_feature_ust, column_uc_feature_ust] = size(uc_feature_ust);


%% 

cpu_N_emg_alt = zeros(row_emg_alt, column_emg_alt);
cpu_N_emg_orta = zeros(row_emg_orta, column_emg_orta);
cpu_N_emg_ust = zeros(row_emg_ust, column_emg_ust);
cpu_N_mean_emg_alt = zeros(row_mean_emg_alt, column_mean_emg_alt);
cpu_N_mean_emg_orta = zeros(row_mean_emg_orta, column_mean_emg_orta);
cpu_N_mean_emg_ust = zeros(row_mean_emg_ust, column_mean_emg_ust);
cpu_N_rms_emg_alt = zeros(row_rms_emg_alt, column_rms_emg_alt);
cpu_N_rms_emg_orta = zeros(row_rms_emg_orta, column_rms_emg_orta);
cpu_N_rms_emg_ust = zeros(row_rms_emg_ust, column_rms_emg_ust);
cpu_N_uc_feature_alt = zeros(row_uc_feature_alt, column_uc_feature_alt);
cpu_N_uc_feature_orta = zeros(row_uc_feature_orta, column_uc_feature_orta);
cpu_N_uc_feature_ust = zeros(row_uc_feature_ust, column_uc_feature_ust);

N_emg_alt = gpuArray(cpu_N_emg_alt);
N_emg_orta = gpuArray(cpu_N_emg_orta);
N_emg_ust = gpuArray(cpu_N_emg_ust);
N_mean_emg_alt = gpuArray(cpu_N_mean_emg_alt);
N_mean_emg_orta = gpuArray(cpu_N_mean_emg_orta);
N_mean_emg_ust = gpuArray(cpu_N_mean_emg_ust);
N_rms_emg_alt = gpuArray(cpu_N_rms_emg_alt);
N_rms_emg_orta = gpuArray(cpu_N_rms_emg_orta);
N_rms_emg_ust = gpuArray(cpu_N_rms_emg_ust);
N_uc_feature_alt = gpuArray(cpu_N_uc_feature_alt);
N_uc_feature_orta = gpuArray(cpu_N_uc_feature_orta);
N_uc_feature_ust = gpuArray(cpu_N_uc_feature_ust);

%% 


for i = 1:column_emg_alt
    N_emg_alt(:,i) = (emg_alt(:,i)-min(emg_alt(:,i)))/(max(emg_alt(:,i))-min(emg_alt(:,i)));
end

for i = 1:column_emg_orta
    N_emg_orta(:,i) = (emg_orta(:,i)-min(emg_orta(:,i)))/(max(emg_orta(:,i))-min(emg_orta(:,i)));
end

for i = 1:column_emg_ust
    N_emg_ust(:,i) = (emg_ust(:,i)-min(emg_ust(:,i)))/(max(emg_ust(:,i))-min(emg_ust(:,i)));
end


for i = 1:column_mean_emg_alt
    N_mean_emg_alt(:,i) = (mean_emg_alt(:,i)-min(mean_emg_alt(:,i)))/(max(mean_emg_alt(:,i))-min(mean_emg_alt(:,i)));
end

for i = 1:column_mean_emg_orta
    N_mean_emg_orta(:,i) = (mean_emg_orta(:,i)-min(mean_emg_orta(:,i)))/(max(mean_emg_orta(:,i))-min(mean_emg_orta(:,i)));
end

for i = 1:column_mean_emg_ust
    N_mean_emg_ust(:,i) = (mean_emg_ust(:,i)-min(mean_emg_ust(:,i)))/(max(mean_emg_ust(:,i))-min(mean_emg_ust(:,i)));
end

for i = 1:column_rms_emg_alt
    N_rms_emg_alt(:,i) = (rms_emg_alt(:,i)-min(rms_emg_alt(:,i)))/(max(rms_emg_alt(:,i))-min(rms_emg_alt(:,i)));
end

for i = 1:column_rms_emg_orta
    N_rms_emg_orta(:,i) = (rms_emg_orta(:,i)-min(rms_emg_orta(:,i)))/(max(rms_emg_orta(:,i))-min(rms_emg_orta(:,i)));
end

for i = 1:column_rms_emg_ust
    N_rms_emg_ust(:,i) = (rms_emg_ust(:,i)-min(rms_emg_ust(:,i)))/(max(rms_emg_ust(:,i))-min(rms_emg_ust(:,i)));
end

for i = 1:column_uc_feature_alt
    N_uc_feature_alt(:,i) = (uc_feature_alt(:,i)-min(uc_feature_alt(:,i)))/(max(uc_feature_alt(:,i))-min(uc_feature_alt(:,i)));
end

for i = 1:column_uc_feature_orta
    N_uc_feature_orta(:,i) = (uc_feature_orta(:,i)-min(uc_feature_orta(:,i)))/(max(uc_feature_orta(:,i))-min(uc_feature_orta(:,i)));
end

for i = 1:column_uc_feature_ust
    N_uc_feature_ust(:,i) = (uc_feature_ust(:,i)-min(uc_feature_ust(:,i)))/(max(uc_feature_ust(:,i))-min(uc_feature_ust(:,i)));
end


%% Verilerin transpozunu alalım

TN_emg_alt = N_emg_alt';
TN_emg_orta = N_emg_orta';
TN_emg_ust = N_emg_ust';
TN_mean_emg_alt = N_mean_emg_alt';
TN_mean_emg_orta = N_mean_emg_orta';
TN_mean_emg_ust = N_mean_emg_ust';
TN_rms_emg_alt = N_rms_emg_alt';
TN_rms_emg_orta = N_rms_emg_orta';
TN_rms_emg_ust = N_rms_emg_ust';
TN_uc_feature_alt = N_uc_feature_alt';
TN_uc_feature_orta = N_uc_feature_orta';
TN_uc_feature_ust = N_uc_feature_ust';

T_aci = aci';
T_mean_aci = mean_aci';
T_rms_aci = rms_aci';


%% Optimal nöron sayısını bulmak için loopa almammız gerekecek ve bunu her ağ için yapacağız


% % 1) emg_alt - aci (tum pencerelerle 30 adet) 

norm_xt = TN_emg_alt;
yt = T_aci;



        % ANN yapısını belirleme
        hiddenLayerSize = H1;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        net.layers{1}.transferFcn = 'tansig';
        net.layers{2}.transferFcn = 'poslin';
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 1) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 1) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 1) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,1) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,1) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,1) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,1)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,1)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,1)   = a3(2,1);
      

        gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_A_L_T ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\emg_alt_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\emg_alt_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_A_L_T ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\zoom_emg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\zoom_emg_alt_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_D_O_W_N and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\ing_emg_alt_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\ing_emg_alt_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_D_O_W_N and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\ing_zoom_emg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\1 emg_alt_vs_aci\' kisi '\ing_zoom_emg_alt_aci.fig']);
        close(gcf4);

        % Giriş işaretleriyle çizdirmek istedim ancak mantıksız. Çünkü
        % giriş işareti pencereleniyor. Pencereli sinyali çizdiremeyiz. Ham
        % halini çizdirsek de boyutlar tutmuyor.

fprintf('m: %d\n',m);
fprintf('birinci ag');  
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n');  
%% 

% 2) emg_orta - aci (tum pencerelerle 30 adet) 

norm_xt = TN_emg_orta;
yt = T_aci;


        % ANN yapısını belirleme
        hiddenLayerSize = H2;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 2) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 2) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 2) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,2) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,2) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,2) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,2)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,2)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,2)   = a3(2,1);

      
        gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_O_R_T_A ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\emg_orta_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\emg_orta_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_O_R_T_A ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\zoom_emg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\zoom_emg_orta_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_M_I_D and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\ing_emg_orta_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\ing_emg_orta_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ;'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_M_I_D and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\ing_zoom_emg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\2 emg_orta_vs_aci\' kisi '\ing_zoom_emg_orta_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('ikinci ag');                                      
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 

%% 


% 3) emg_ust - aci (tum pencerelerle 30 adet) 
 
norm_xt = TN_emg_ust;
yt = T_aci;



        % ANN yapısını belirleme
        hiddenLayerSize = H3;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 3) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 3) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 3) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,3) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,3) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,3) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,3)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,3)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,3)   = a3(2,1);


  gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_U_S_T ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\emg_ust_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\emg_ust_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'EMG_U_S_T ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\zoom_emg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\zoom_emg_ust_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_U_P and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\ing_emg_ust_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\ing_emg_ust_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'EMG_U_P and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\ing_zoom_emg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\3 emg_ust_vs_aci\' kisi '\ing_zoom_emg_ust_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('ucuncu ag');                                      
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 4) mean_emg_alt - mean_aci (tum pencerelerle 30 adet) 
 
norm_xt = TN_mean_emg_alt;
yt = T_mean_aci;



        % ANN yapısını belirleme
        hiddenLayerSize = H4;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 4) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 4) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 4) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,4) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,4) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,4) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,4)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,4)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,4)   = a3(2,1);

      
 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_A_L_T ve ORT. KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ORTemg_alt_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ORTemg_alt_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_A_L_T ve ORT. KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\zoom_ORTemg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\zoom_ORTemg_alt_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_D_O_W_N and MEAN POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ing_ORTemg_alt_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ing_ORTemg_alt_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_D_O_W_N and MEAN POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ing_zoom_ORTemg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\4 mean_emg_alt_vs_mean_aci\' kisi '\ing_zoom_ORTemg_alt_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('dorduncu ag');  
R_kare_test
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 



%% 

% 5) mean_emg_orta - mean_aci (tum pencerelerle 30 adet) 

norm_xt = TN_mean_emg_orta;
yt = T_mean_aci;



        % ANN yapısını belirleme
        hiddenLayerSize = H5;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 5) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 5) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 5) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,5) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,5) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,5) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,5)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,5)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,5)   = a3(2,1);
      
 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_O_R_T_A ve ORT. KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ORTemg_orta_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ORTemg_orta_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_O_R_T_A ve ORT. KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\zoom_ORTemg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\zoom_ORTemg_orta_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_M_I_D and MEAN POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ing_ORTemg_orta_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ing_ORTemg_orta_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_M_I_D and MEAN POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ing_zoom_ORTemg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\5 mean_emg_orta_vs_mean_aci\' kisi '\ing_zoom_ORTemg_orta_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('besinci ag');  
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 

%% 

% 6) mean_emg_ust - mean_aci (tum pencerelerle 30 adet) 

norm_xt = TN_mean_emg_ust;
yt = T_mean_aci;


        % ANN yapısını belirleme
        hiddenLayerSize = H6;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 6) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 6) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 6) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,6) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,6) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,6) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,6)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,6)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,6)   = a3(2,1);

 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_U_S_T ve ORT. KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ORTemg_ust_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ORTemg_ust_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'ORT. EMG_U_S_T ve ORT. KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\zoom_ORTemg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\zoom_ORTemg_ust_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_U_P and MEAN POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ing_ORTemg_ust_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ing_ORTemg_ust_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'MEAN EMG_U_P and MEAN POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ing_zoom_ORTemg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\6 mean_emg_ust_vs_mean_aci\' kisi '\ing_zoom_ORTemg_ust_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('altinci ag');  
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 7) rms_emg_alt - rms_aci (tum pencerelerle 30 adet) 
 
norm_xt = TN_rms_emg_alt;
yt = T_rms_aci;

        % ANN yapısını belirleme
        hiddenLayerSize = H7;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 7) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 7) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 7) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,7) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,7) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,7) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,7)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,7)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,7)   = a3(2,1);

gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_A_L_T ve RMS KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\RMSemg_alt_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\RMSemg_alt_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_A_L_T ve RMS KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\zoom_RMSemg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\zoom_RMSemg_alt_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_D_O_W_N and RMS POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\ing_RMSemg_alt_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\ing_RMSemg_alt_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_D_O_W_N and RMS POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\ing_zoom_RMSemg_alt_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\7 rms_emg_alt_vs_rms_aci\' kisi '\ing_zoom_RMSemg_alt_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('yedinci ag');  
R_kare_test
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 8) rms_emg_orta - rms_aci (tum pencerelerle 30 adet) 
 
norm_xt = TN_rms_emg_orta;
yt = T_rms_aci;


        % ANN yapısını belirleme
        hiddenLayerSize = H8;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 8) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 8) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 8) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,8) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,8) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,8) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m, 8)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m, 8)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m, 8)   = a3(2,1);
      
 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_O_R_T_A ve RMS KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\RMSemg_orta_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\RMSemg_orta_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_O_R_T_A ve RMS KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\zoom_RMSemg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\zoom_RMSemg_orta_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_M_I_D and RMS POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\ing_RMSemg_orta_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\ing_RMSemg_orta_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_M_I_D and RMS POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\ing_zoom_RMSemg_orta_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\8 rms_emg_orta_vs_rms_aci\' kisi '\ing_zoom_RMSemg_orta_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('sekizinci ag');  
R_kare_test 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 9) rms_emg_ust - rms_aci (tum pencerelerle 30 adet) 

norm_xt = TN_rms_emg_ust;
yt = T_rms_aci;

        % ANN yapısını belirleme
        hiddenLayerSize = H9;
        net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 9) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 9) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 9) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m,9) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m,9) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m,9) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m,9)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m,9)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m,9)   = a3(2,1);

 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_U_S_T ve RMS KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\RMSemg_ust_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\RMSemg_ust_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'RMS EMG_U_S_T ve RMS KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\zoom_RMSemg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\zoom_RMSemg_ust_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_U_P and RMS POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\ing_RMSemg_ust_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\ing_RMSemg_ust_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'RMS EMG_U_P and RMS POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\ing_zoom_RMSemg_ust_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\9 rms_emg_ust_vs_rms_aci\' kisi '\ing_zoom_RMSemg_ust_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('DOKUZUNCU ag');  
R_kare_test
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 10) uc_feature_alt - aci (tum pencerelerle 30 adet) 

norm_xt = TN_uc_feature_alt;
yt = T_aci;

        % ANN yapısını belirleme
        hiddenLayerSize = H10;
             net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 10) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 10) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 10) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m, 10) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m, 10) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m, 10) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m, 10)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m, 10)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m, 10)   = a3(2,1);

 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_A_L_T ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\hybrid_feat_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_A_L_T ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\zoom_hybrid_feat_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_D_O_W_N FEATURES and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\ing_hybrid_feat_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\ing_hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_D_O_W_N FEATURES and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\10 uc_feature_alt_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('ONUNCU ag');  
R_kare_test
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 

%% 

% 11) uc_feature_orta - aci (tum pencerelerle 30 adet) 

norm_xt = TN_uc_feature_orta;
yt = T_aci;

        % ANN yapısını belirleme
        hiddenLayerSize = H11;
               net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 11) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 11) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 11) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m, 11) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m, 11) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m, 11) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m, 11)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m, 11)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m, 11)   = a3(2,1);

 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_O_R_T_A ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\hybrid_feat_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_O_R_T_A ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\zoom_hybrid_feat_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_M_I_D FEATURES and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\ing_hybrid_feat_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\ing_hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_M_I_D FEATURES and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\11 uc_feature_orta_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('ONBIRINCI ag');  
R_kare_test
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 


%% 

% 12) uc_feature_cok - aci (tum pencerelerle 30 adet) 
 
norm_xt = TN_uc_feature_ust;
yt = T_aci;

        % ANN yapısını belirleme
        hiddenLayerSize = H12;
               net = fitnet(hiddenLayerSize);
        net.divideParam.trainRatio = 65/100;
        net.divideParam.valRatio = 25/100;
        net.divideParam.testRatio = 10/100;
        
        % agi egitme
        [net,tr] = trainscg(net, norm_xt, yt);
        
        % eğtim ve val verilerinin hatalarının RMSi ile performans olcumu
        yTrain = net(norm_xt(:,tr.trainInd));
        yVal = net(norm_xt(:,tr.valInd));
        yTest = net(norm_xt(:,tr.testInd));

        yTrainTrue = yt(tr.trainInd);  
        yValTrue = yt(tr.valInd); 
        yTestTrue = yt(tr.testInd); 

        rmse_train(m, 12) = sqrt(mean((yTrain - yTrainTrue).^2));  %RMS of training set
        rmse_val(m, 12) = sqrt(mean((yVal - yValTrue).^2));     %RMS of validation set    
        rmse_test(m, 12) = sqrt(mean((yTest - yTestTrue).^2));     %RMS of test set

        nrmse_train(m, 12) = sqrt(mean((yTrain - yTrainTrue).^2))./range(yTrain);  %nRMS of training set
        nrmse_val(m, 12) = sqrt(mean((yVal - yValTrue).^2))./range(yVal);     %nRMS of validation set    
        nrmse_test(m, 12) = sqrt(mean((yTest - yTestTrue).^2))./range(yTest);     %nRMS of test set   
        
        a1 = corrcoef(yTrainTrue, yTrain);
        R_kare_train(m, 12)   = a1(2,1);     % R2 değerlerinin bulunması

        a2 = corrcoef(yValTrue, yVal);
        R_kare_val(m, 12)   = a2(2,1);

        a3 = corrcoef(yTestTrue, yTest);
        R_kare_test(m, 12)   = a3(2,1);

 gcf1 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_U_S_T ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf1, "Times New Roman");
        fontsize(gcf1, scale=1.3);
        savefig(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\hybrid_feat_aci.fig']);
        exportgraphics(gcf1, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf1);

        gcf2 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Ölçülen','Tahmin Edilen');
        title({[ num2str(m) ] ; 'ZOOM' ; ['PENCERE:' num2str(win) '  ADIM:' num2str(step) '  SIÇRAMA:' num2str(leap)] ; 'MELEZ_U_S_T ÖZNİTELİK VEKTÖRÜ ve KONUM'});
        fontname(gcf2, "Times New Roman");
        fontsize(gcf2, scale=1.3);
        exportgraphics(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf2, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\zoom_hybrid_feat_aci.fig']);
        close(gcf2);

        gcf3 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue); hold on; plot(yTest); hold off;
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_U_P FEATURES and POSITION'});
        fontname(gcf3, "Times New Roman");
        fontsize(gcf3, scale=1.3);
        savefig(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\ing_hybrid_feat_aci.fig']);
        exportgraphics(gcf3, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\ing_hybrid_feat_aci.tif'],'Resolution', 600);
        close(gcf3);

        gcf4 = figure('units','normalized','outerposition',[0 0 1 1]);
        plot(yTestTrue(500:1500)) 
        hold on
        plot(yTest(500:1500))
        hold off
        legend('Measured','Estimated');
        title({[ num2str(m) ] ; 'ZOOM' ; ['WINDOW:' num2str(win) '  STEP:' num2str(step) '  LEAP:' num2str(leap)] ; 'HYBRID_U_P FEATURES and POSITION'});
        fontname(gcf4, "Times New Roman");
        fontsize(gcf4, scale=1.3);
        exportgraphics(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.tif'],'Resolution', 600);
        savefig(gcf4, ['F:\Bulut\Belgeler\DOKTORA\Doktora_Tez_Calismalar\Protez El Konum Kestirim ANN_2\4 sonuclar\ag_cikislari\pencere' num2str(win) '_step' num2str(step) '_leap' num2str(leap) '\' hareket '\12 uc_feature_cok_vs_aci\' kisi '\ing_zoom_hybrid_feat_aci.fig']);
        close(gcf4);

fprintf('m: %d\n',m);
fprintf('ONIKINCI ag');  
R_kare_test; 
fprintf('\n');
fprintf('\n');  
fprintf('\n');  
fprintf('\n'); 

%% 

end




