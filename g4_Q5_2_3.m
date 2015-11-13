%Q5_2_3
%‡@
nokogiri1 = [1:40];
%‡A
nokogiri2 = [0.01:0.01:0.4];
%‡B
nokogiri3 = nokogiri2;
for ii=1:255
    nokogiri3 = [nokogiri3,nokogiri2];
end
length(nokogiri3)
%‡C
plot(nokogiri3)
grid on
fs = 8000;
wavplay(nokogiri3,fs)