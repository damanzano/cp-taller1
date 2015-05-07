% David Andrés Mazano Herrera
% Introducción a la programación por restricciones
% Tarea 1-Punto 4
% Sumar dos números binarios representados como listas
% Se asume que ambos números tiene igual longitud

declare
fun{AddBinaries B1 B2}
	fun {IterAdd B1 B2 L C}
		case B1 
		of nil then
			if C==1 then 1|L
			else L
			end
		[] H1|T1 then
			H2|T2 = B2
			NewC R in
			if C==1 then
				if {And H1==1 H2==1} then
					R = 1
					NewC = 1
				elseif {And H1==0 H2==0} then
					R = 1
					NewC = 0
				else
					R = 0
					NewC = 1
				end
			else
				if {And H1==1 H2==1} then
					R = 0
					NewC = 1 
				elseif {And H1==0 H2==0} then
					R = 0
					NewC = 0
				else
					R = 1
					NewC = 0
				end
			end
			{IterAdd T1 T2 R|L NewC }
	   	end
    end
in
   {IterAdd {List.reverse B1} {List.reverse B2}  nil 0}
end

%Pruebas
{Browse {AddBinaries [1 0][0 1]}}
{Browse {AddBinaries [1 1][0 1]}}
{Browse {AddBinaries [1 0 1][1 0 1]}}