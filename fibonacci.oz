% David Andr�s Mazano Herrera
% Introducci�n a la programaci�n por restricciones
% Tarea 1-Punto 1
% Implementaci�n de la serie Fibbonacci definida por 1
%  fib(n)= 1, si n<2
%  fib(n)= fib(n-1)+fib(n-2), si n>=2
declare
fun{Fib N}
   if N<2 then 1
   else
      {Fib N-1}+{Fib N-2}
   end
end

declare
fun {IterativeFib N}
end

