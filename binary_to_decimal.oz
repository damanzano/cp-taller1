% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 3
% Comvertir una lista de números binarios a su representación decimal
% La transformación se hace usando el método de Doubling
% ver http://www.wikihow.com/Convert-from-Binary-to-Decimal

declare
fun{Bin2Dec L}
   fun {IterativeBin2Dec L N}
      case L 
	  of nil then N
          [] H|T then {IterativeBin2Dec T ((N*2)+H)}
      end
      
   end
in
   {IterativeBin2Dec L 0}
end

% Pruebas
{ Browse {Bin2Dec [0]}}
{ Browse {Bin2Dec [1]}}
{ Browse {Bin2Dec [1 0]}}
{ Browse {Bin2Dec [1 1]}}
{ Browse {Bin2Dec [1 0 1 0]}}
{ Browse {Bin2Dec [1 1 0 0 1 0 0]}}
{ Browse {Bin2Dec [1 1 1 1 1 0 1 0 0 0]}}
{ Browse {Bin2Dec [1 0 1 1 1 0 1 0 1 0 0]}}