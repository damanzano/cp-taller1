% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 2
% Comvertir un entero en base decimal a su representación binaria
% La reprensentación se retorna en forma de lista

declare
fun{Dec2Bin N}
   fun {IterativeDec2Bin N L}
      if N == 0 then 0|L
      elseif N==1 then 1|L
      else {IterativeDec2Bin (N div 2) (N mod 2)|L} end
   end
in
   {IterativeDec2Bin N nil}
end

% Pruebas
{ Browse {Dec2Bin 0}}
{ Browse {Dec2Bin 1}}
{ Browse {Dec2Bin 2}}
{ Browse {Dec2Bin 3}}
{ Browse {Dec2Bin 10}}
{ Browse {Dec2Bin 100}}
{ Browse {Dec2Bin 1000}}
