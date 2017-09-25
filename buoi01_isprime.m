function m = buoi01_isprime( num )
if (num < 2)
    m = 0;
    return
end
for i = 2:(num-1)
    if (mod(num, i) == 0)
        m = 0;
        return
    end
end
m = 1;
end

