% Alumno: Martín Miranda

% Punto 1

vive(juan, casaMetros(120)).
vive(nico, casaAmbientes(3)).
vive(nico, casaBanios(2)).
vive(alf, casaAmbientes(3)).
vive(alf, casaBanios(1)).
vive(julian, casaTipo(loft)).
vive(julian, casaAnioConstruccion(2000)).
vive(vale, casaAmbientes(4)).
vive(vale, casaBanios(1)).
vive(fer, casaMetros(110)).

localidad(alf, almagro).
localidad(juan, almagro).
localidad(nico, almagro).
localidad(julian, almagro).
localidad(vale, flores).
localidad(fer, flores).

% Punto 2

barrioCopado(Barrio) :-
    esBarrio(Barrio),
    forall(localidad(Persona, Barrio), viveEnCasaCopada(Persona)).

viveEnCasaCopada(Persona) :- vive(Persona, Caracteristica), esCopado(Caracteristica).

esCopado(casaMetros(Metros)) :- Metros > 100.
esCopado(casaAmbientes(Ambientes)) :- Ambientes > 3.
esCopado(casaBanios(Banios)) :- Banios > 1.
esCopado(casaAnioConstruccion(Anio)) :- Anio > 2015. 


% Punto 3

barrioCaro(Barrio) :-
    esBarrio(Barrio),
    forall(localidad(Persona, Barrio), viveEnCasaCara(Persona)).

viveEnCasaCara(Persona) :- vive(Persona, Caracteristica), caracteristicaCara(Caracteristica).

caracteristicaCara(casaAnioConstruccion(Anio)) :- Anio >= 2005.
caracteristicaCara(casaMetros(Metros)) :- Metros >= 90.
caracteristicaCara(casaAmbientes(Ambientes)) :- Ambientes >= 3.

% Auxiliares

esBarrio(Barrio) :- localidad(_, Barrio).
