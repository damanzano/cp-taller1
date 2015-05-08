% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 6
% Implementación QuickSort

declare
fun {QuickSort Xs FC}
   case Xs
   of nil then nil
   [] [X] then [X]
   [] X|Xr then
      Mn My
   in
      % TODO: Escoger el pivote usando una funcion FP en lugar de siempre escoger el primero
      % P = {FP Xs}
      % Partir la Lista usando la funcion de comparacion FC
      {List.partition Xr fun {$ Y} {FC Y X} end Mn My}
      {List.append {QuickSort Mn FC} X|{QuickSort My FC}}
   end
end

% Pruebas
% Ordernar números ascendentemente
{Browse {QuickSort [5 7 8 10 4 3 1 2 6 9] Value.'=<'}}
% Ordenar números descendentemente
{Browse {QuickSort [5 7 8 10 4 3 1 2 6 9] Value.'>='}}
% Ordenar nombres ascendentemente
{Browse {QuickSort ['david' 'angela' 'juan' 'karen' 'cristian' 'miguel' 'oscar' 'gustavo'] Value.'=<'}}
% Ordenar nombres descendentemente
{Browse {QuickSort ['david' 'angela' 'juan' 'karen' 'cristian' 'miguel' 'oscar' 'gustavo'] Value.'>='}}
