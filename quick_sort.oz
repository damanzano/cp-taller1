% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 6
% Implementación QuickSort

declare
fun {Quicksort Xs P}
	case Xs
	of nil then nil
	[] [X] then [X]
	[] X|Xr then
      L G
	in
      % Partir la Lista
	  {List.partition Xr fun {$ Y} {P Y X} end L G}
	  {List.append {Qsort L P} X|{Qsort G P}}
	end
end

