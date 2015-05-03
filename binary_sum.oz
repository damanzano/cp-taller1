% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 4
% Sumar dos números binarios representados como listas
% Se asume que ambos números tiene igual longitud

declare
fun{AddBinaries B1 B2}
   fun {IterativeAddBinaries B1 B2 L C}
      case B1 
		of nil then B1+B2
        [] H|T then {IterativeAddBinaries T ((N*2)+H)}
      end
      
   end
in
   {IterativeAddBinaries B1 B2 nil 0}
end