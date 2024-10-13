function a = construir_Matriz(m)
a = zeros(m);
for i = 1:m
    for j = 1:m
        if abs(i-j) == 1
            a (i,j) = -1;
        end
    end
end
