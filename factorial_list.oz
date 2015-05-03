% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 5
% Crear una lista de factoriales consecutivos

% Implementación recursiva
declare
fun {RecFactList N}
   fun {FactList N I A L}
      if I==N then {List.append L [I*A]}
      else
	 {List.append L {FactList N (I+1) (I*A) [I*A]}}
      end
      
   end
in
  {FactList N 1 1 nil}
end

{Browse {RecFactList 1}}
{Browse {RecFactList 2}}
{Browse {RecFactList 4}}   
{Browse {RecFactList 5}}

% Implementación iterativa
declare
fun {IteFactList N}
   fun {FactList N I A L}
      if I>N then L
      else
	 {FactList N (I+1)(I*A) (I*A)|L}
      end
      
   end
in
   {List.reverse {FactList N 1 1 nil}}
end

% Pruebas
{Browse {IteFactList 1}}
{Browse {IteFactList 2}}
{Browse {IteFactList 4}}   
{Browse {IteFactList 5}}	