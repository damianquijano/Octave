function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);% m=300 n=2

% You need to return the following variables correctly.
centroids = zeros(K, n);% K=3 n=2
%La matriz X tiene dos columnas. Su dimensión es 300 x 2
%El vector columna idx contiene los valores que indican el grupo al que pertenece cada fila.Su dimensión es 300 x 1.

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

A=[X idx];
for i=1:K
  B=A(A(:,n+1)==i,1:n);
  centroids(i,:)=mean(B);
end

%La matriz A contiene la data y columnas de X y le agrego la columna con valores del vector columna idx(asigna grupo a cada fila)
%por tanto la matriz A tendrá 3 columnas(es la matriz X ampliada).
%Usamos un for de 1 a 3 (K=3 son 3 agrupamientos).
%En la primera iteración, donde i=1,la matriz B contiene todas las filas cuya columna idx (columna 3) sea igual al valor 1
%A(:,n+1)==1 es A(:,3)==1, dado que n=2 (n es número de columnas de X, pero como A tiene 3 columnas, solo quiero calcular las columnas 1 y 2.
%A(:,3)==1 es una expresión que devuelve una columna con valores de índices o la posiciones de todas las filas de A cuya columna
% idx es igual a 1. La expresión 1:n nos dice que solamente queremos trabajar con las columnas de 1 a 2 (n=2). 
%Por tanto B contendrá todas las filas de A cuya columna idx (columna 3) sea igual al valor 1, y recibe las columnas 1 y 2 de A.
%Ahora podemos calcular la media de las columnas 1 y 2 de la matriz B.
%La instrucción mean calcula la media de la columna 1 y de la columna 2 de la matriz B, por tanto devuelve dos valores.
%La matriz centroids recibe los dos valores en la fila i, la cual en la primera iteración es igual a 1. La expresión
%nos dice que almacenemos los valores de mean en la fila 1 y en todas sus columnas, de la matriz centroids.
%Todo se repite para i=2 y para i=3, hasta llenar la matriz centroids con 6 medias en sus tres filas y dos columnas. 
%Cada fila de centroids contiene un par de medias que son los valores de un nuevo centroid.
%La fila 1 de la matriz centroids contiene los valores de K=1, la fila 2 contiene los valores de K=2 y la fila 3 de K=3.








% =============================================================


end

