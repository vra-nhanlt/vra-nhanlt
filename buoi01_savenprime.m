function m = buoi01_savenprime(n)
m = buoi01_findnprime(n);
filename = ['E:\Google Drive\Study\Nam 2016\Master\CD_NDTGVUD\','prime',num2str(n),'.mat'];
save(filename, 'm');
load(filename);
end

