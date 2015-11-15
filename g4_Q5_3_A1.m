%Q5_3_A1

[kaeru,fs] = wavread('kaerunouta.wav');
N = length(kaeru);
out = zeros(N + 3*(N/4),1);
out(1:N) = kaeru;
out(N/4+1:N/4+N) = out(N/4+1:N/4+N) + kaeru;
out(2*N/4+1:2*N/4+N) = out(2*N/4+1:2*N/4+N) + kaeru;
out = out/max(abs(out)) * 0.99;
wavplay(out,fs)
