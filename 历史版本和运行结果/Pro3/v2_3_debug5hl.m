% Depth =rows*10^(-5)s>> Tc=0.4223/fm=4.23ms
% 	rows>>423;
% 
% Width>Tracebackdepth
% 	Cols>64;
% 
% bitsPerFrame>27000
Ploy = [561 753];
% Ploy = [753 561];
% Ploy = [561 756 561];
TracebackDepth = 64;
Cols = 124;
Rows = 3504;
SamplesPerFrame = Cols*Rows/2;
EbN0_Set = 0:2:12;
% BER_2_Hardd= [];
BER_3_d50 = [];
% BER_3_00= [];
for EbN0 = EbN0_Set
    sim('v2_3_debug5')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_3_d50 = [BER_3_d50 BER_3_d5(1)]
%     BER_3_00 = [BER_3_00 BER_3_0(1)];
    EbN0
end
figure
plot(EbN0_Set, BER_3_d50,'*','color','r');
hold on
% plot(EbN0_Set, BER_3_00,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')