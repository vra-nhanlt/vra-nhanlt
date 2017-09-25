% x=rand();
% fprintf('[%8.3f]', x);
% x2=randi([1 10]);
% fprintf('\n%d',x2);
% x_arr=randi([-10 10], 2,3);
% fprintf('\n size of x_array %dx%d',size(x_arr,1), size(x_arr,2));
% fprintf('\n [%2d]', x_arr);
% nhap_m = '\nNhap m: ';
% m = input(nhap_m);
% n = input('\nNhap n: ');
% a=ones(m, n)
% b=zeros(m, n)
% c=eye(m,n)
% d=randi([-10 10], m, n)
% a(1,1)=20
% e=size(a)
% n = input('\nNhap n: ');
% s = 0;
% i = 1;
% while (i <= n)
%     s = s + i;
%     i = i + 1;
% end
% for i=1:n
%     s = s + i;
% end
% fprintf('\n Tong: %d', s);
% buoi01_isprime(1)
% buoi01_findnprime(10)
m=buoi01_savenprime(11)