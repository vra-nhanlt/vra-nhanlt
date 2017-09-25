function m = buoi01_findnprime(n)
m = [];
i = 2;
while (size(m) < n)
    if (buoi01_isprime(i))
        m = [m, i];
    end
    i = i + 1;
end
end

