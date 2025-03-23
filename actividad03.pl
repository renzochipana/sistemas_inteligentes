
carrera(ingenieria_sistemas) :- tiene_habilidad(matematicas), tiene_habilidad(resolucion_problemas), tiene_interes(tecnologia), tiene_personalidad(analitico), tiene_preferencia(autonomia).
carrera(ingenieria_industrial) :- tiene_habilidad(matematicas), tiene_habilidad(liderazgo), tiene_interes(negocios), tiene_personalidad(organizado), tiene_preferencia(trabajo_equipo).
carrera(ingenieria_civil) :- tiene_habilidad(matematicas), tiene_habilidad(creatividad), tiene_interes(construccion), tiene_personalidad(meticuloso), tiene_preferencia(autonomia).
carrera(medicina) :- tiene_habilidad(biologia), tiene_habilidad(empatia), tiene_interes(salud), tiene_personalidad(dedicado), tiene_preferencia(interaccion_social).
carrera(psicologia) :- tiene_habilidad(comunicacion), tiene_habilidad(empatia), tiene_interes(salud), tiene_personalidad(analitico), tiene_preferencia(interaccion_social).
carrera(derecho) :- tiene_habilidad(argumentacion), tiene_interes(justicia), tiene_personalidad(critico), tiene_preferencia(investigacion).
carrera(administracion) :- tiene_habilidad(liderazgo), tiene_interes(negocios), tiene_personalidad(extrovertido), tiene_preferencia(trabajo_equipo).
carrera(economia) :- tiene_habilidad(matematicas), tiene_interes(finanzas), tiene_personalidad(analitico), tiene_preferencia(investigacion).
carrera(contabilidad) :- tiene_habilidad(matematicas), tiene_interes(finanzas), tiene_personalidad(meticuloso), tiene_preferencia(autonomia).
carrera(arquitectura) :- tiene_habilidad(creatividad), tiene_interes(diseño), tiene_personalidad(visionario), tiene_preferencia(autonomia).
carrera(diseño_grafico) :- tiene_habilidad(creatividad), tiene_interes(diseño), tiene_personalidad(expresivo), tiene_preferencia(trabajo_equipo).
carrera(marketing) :- tiene_habilidad(comunicacion), tiene_interes(negocios), tiene_personalidad(extrovertido), tiene_preferencia(interaccion_social).
carrera(biologia) :- tiene_habilidad(biologia), tiene_interes(investigacion), tiene_personalidad(curioso), tiene_preferencia(investigacion).
carrera(fisica) :- tiene_habilidad(matematicas), tiene_habilidad(resolucion_problemas), tiene_interes(investigacion), tiene_personalidad(analitico), tiene_preferencia(investigacion).
carrera(quimica) :- tiene_habilidad(matematicas), tiene_habilidad(laboratorio), tiene_interes(investigacion), tiene_personalidad(meticuloso), tiene_preferencia(investigacion).
carrera(educacion) :- tiene_habilidad(comunicacion), tiene_habilidad(paciencia), tiene_interes(ensenanza), tiene_personalidad(empatico), tiene_preferencia(interaccion_social).
carrera(turismo) :- tiene_habilidad(comunicacion), tiene_interes(cultura), tiene_personalidad(extrovertido), tiene_preferencia(interaccion_social).
carrera(relaciones_internacionales) :- tiene_habilidad(comunicacion), tiene_interes(politica), tiene_personalidad(diplomatico), tiene_preferencia(interaccion_social).


preguntar_habilidad(Habilidad) :-
    write('¿Posees habilidad en '), write(Habilidad), write('? (si/no): '),
    read(Respuesta), nl,
    (Respuesta == si -> assert(tiene_habilidad(Habilidad)) ; true).

preguntar_interes(Interes) :-
    write('¿Te interesa '), write(Interes), write('? (si/no): '),
    read(Respuesta), nl,
    (Respuesta == si -> assert(tiene_interes(Interes)) ; true).

preguntar_personalidad(Rasgo) :-
    write('¿Te consideras una persona '), write(Rasgo), write('? (si/no): '),
    read(Respuesta), nl,
    (Respuesta == si -> assert(tiene_personalidad(Rasgo)) ; true).

preguntar_preferencia(Preferencia) :-
    write('¿Prefieres trabajar en un entorno de '), write(Preferencia), write('? (si/no): '),
    read(Respuesta), nl,
    (Respuesta == si -> assert(tiene_preferencia(Preferencia)) ; true).


seleccionar_carrera :-
    write('Responder las siguientes preguntas para determinar tu carrera:'), nl,

    preguntar_habilidad(matematicas),
    preguntar_habilidad(resolucion_problemas),
    preguntar_habilidad(argumentacion),
    preguntar_habilidad(creatividad),
    preguntar_habilidad(liderazgo),
    preguntar_habilidad(comunicacion),
    preguntar_habilidad(biologia),
    preguntar_habilidad(empatia),
    preguntar_habilidad(laboratorio),
    preguntar_habilidad(paciencia),

    preguntar_interes(tecnologia),
    preguntar_interes(salud),
    preguntar_interes(justicia),
    preguntar_interes(diseño),
    preguntar_interes(negocios),
    preguntar_interes(investigacion),
    preguntar_interes(ensenanza),
    preguntar_interes(construccion),
    preguntar_interes(finanzas),
    preguntar_interes(cultura),
    preguntar_interes(politica),

    preguntar_personalidad(analitico),
    preguntar_personalidad(empatico),
    preguntar_personalidad(extrovertido),
    preguntar_personalidad(meticuloso),
    preguntar_personalidad(critico),
    preguntar_personalidad(visionario),
    preguntar_personalidad(expresivo),
    preguntar_personalidad(dedicado),
    preguntar_personalidad(diplomatico),
    preguntar_personalidad(curioso),

    preguntar_preferencia(trabajo_equipo),
    preguntar_preferencia(autonomia),
    preguntar_preferencia(investigacion),
    preguntar_preferencia(interaccion_social),

    findall(C, carrera(C), Carreras),
    mostrar_resultado(Carreras).


mostrar_resultado([]) :- write('No se encontró una carrera adecuada con tus respuestas.'), nl.
mostrar_resultado([C|_]) :- write('Tu carrera recomendada es: '), write(C), nl.

