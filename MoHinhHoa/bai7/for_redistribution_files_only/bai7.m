clc;
disp('  BAI 6: MO PHONG HE THONG VAT LY')
disp('               BAI LAM!')
disp('------------------------------------------------------------')

m = 100 * str2double(input('Hay nhap khoi luong cua vat 100 m = ', 's'));
C = 10 * str2double(input('Hay nhap he so giam lac cua he 10 C = ', 's'));
K = 10 * str2double(input('Hay nhap do cung cua lo xo 10 K = ', 's'));
T = 0.001 * str2double(input('Hay nhap chu ky trich mau 0.001 T = ', 's'));
if isnan(m)
    m=100*5;
    if isnan(C)
        C=10*5;
        if isnan(K)
            K=10*5;
            if isnan(T)
                T=0.001*5;
            end
        end
    end
end
Num = [K]; % Tu so cua ham truyen W(s)
Den = [m,C,K]; % Mau so cua ham truyen

w = tf(Num, Den);
step(w)
title('DAC TINH QUA DO CUA HE DKTD');
xlabel('Thoi gian t');
ylabel('y(t)');
grid;