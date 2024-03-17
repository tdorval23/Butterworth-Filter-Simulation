%CLEAR WORKSPACE BEFORE RUNNING!
f = 300:1:60000;
x = 2*pi*f;
R = 10000;
C = 1 ./(0.000000003183.*x.*1i);
L = 0.1592.*x.*1i;
num = R.*C;
denom = (R^2)+(2.*R.*C)+(R.*L)+(C.*L)+(L.*L)+(R.*L)+(L.*C);
tran = num./denom;
norm = (real(tran)).^2;
comp = (imag(tran)).^2;
result = sqrt(norm + comp);
semilogx(f,result);
grid on;
title('Resulting Frequency Response from Fourier Transform of Transfer Function');
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');