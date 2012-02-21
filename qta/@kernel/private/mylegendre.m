function l = mylegendre(N,x)
% Legendrepolynome bis zur Odnung N
% und gibt sie als Matrix zur�ck
% erste Dimension -> Ordnung
% zweite Dimension -> x


x = reshape(x,1,[]);
l(1,:) = repmat(1,1,length(x));
l(2,:) = x;
l(3,:) = (3*x.^2 - 1)/2;

for i = 2:N-1
    l(i+2,:) = ((2*i+1) * x .* l(i+1,:) - (i) * l(i,:))/(i+1);
end

