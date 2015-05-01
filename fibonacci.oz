% David Andr�s Mazano Herrera
% Introducci�n a la programaci�n por restricciones
% Tarea 1-Punto 1
% Implementaci�n de la serie Fibbonacci definida por 1
%  fib(n)= 1, si n<2
%  fib(n)= fib(n-1)+fib(n-2), si n>=2

% Implementaci�n recursiva
declare
fun{Fib N}
   if N<2 then 1
   else
      {Fib N-1}+{Fib N-2}
   end
end

%Implementaci�n iterativa
declare
fun {IterativeFib N}
   fun {Fib N A1 A2}
     if N < 1 then A1 else {Fib (N - 1) A2 (A1 + A2)} end
   end
in
   {Fib N 1 1}
end

{Browse {Fib 10}}
{Browse {Fib 20}}
{Browse {Fib 50}}
% La implementaci�n recursiva pura se tarda m�s de un minuto en calcular la serie para N=50

{Browse {IterativeFib 50+1}}
{Browse {IterativeFib 50*10}}
{Browse {IterativeFib 50*100}}


