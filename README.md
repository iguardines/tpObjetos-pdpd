# pdep-1c-grupo3-4-tp-objetos
Repositorio para el tp de Objetos de la cátedra paradigmas de programación - UTN FRBA

link al enunciado
https://docs.google.com/document/d/1rgUEZjtBMjJVypkLhmQEf85hE6bhcbPVbLFvFn0b1M4/edit#

Colaboradores: Ariel Sarchioni, Emanuel Some, Nicolas Ramirez, Ignacio Guardines


Enunciado y pautas de entrega:

Fecha de Entrega: hasta el 20/05
Forma de Entrega: número de grupo y nombres de los integrantes. wlk
y número de grupo y nombres de los integrantes.wtest
Ejemplo: 
4 Fleischman y Luzzi.wlk
4 Fleischman, Luzzi, ...wtest

A quién entregar: Franco Consoni, Andrea Fleishman,

Plan vivienda
  El Estado desea lanzar un nuevo plan, y necesita un sistema para organizar su funcionamiento, administrando las horas de trabajo, y la asignación de viviendas a los que soliciten el plan.
Debido a hipotecas y demás, el Estado incauta (se apropia) de casas y departamentos, y suele ponerlos en remate. En vez de hacer esto último, está decidiendo lanzar un nuevo plan: Consiste en que cada familia realice cierta cantidad de horas de trabajo arreglando o reconstruyendo distintas propiedades, y que luego de eso, como recompensa, pueda acceder a una de las propiedades ya terminadas.
De esta forma, el Estado gasta menos para otorgar una casa a una familia (ya no tiene pagar el 100% del trabajo a terceros). Y las personas, además de acceder a una propiedad, son capacitadas para poder realizar trabajos de construcción.
Para toda propiedad incautada por el Estado, se registra:
La cantidad de horas de trabajo restante, que se necesita realizar por las familias, para que sea “digna” de ser habitada. Este valor va disminuyendo a medida que se trabaja sobre esta propiedad.
La cantidad de horas de trabajo que necesita realizar una familia en particular para poder accederla. Por ejemplo, el Estado puede determinar que una propiedad en Puerto Madero es más “costosa” que si estuviera en otras zonas, así que la cantidad de horas que debe trabajar una familia para quedarse con ella será mayor. Una vez registrada la propiedad, este valor no cambia nunca.
Sus habitantes. En principio no tienen ninguno, pero cuando una familia se queda con una propiedad, se deben registrar como habitantes de la propiedad (se detalla más abajo).
De cada familia que solicita el plan, se debe registrar qué personas la componen, y quién de todas ellas es la representante (más que nada para dirigirse a ella al llamar por teléfono o enviar cartas).
De cada persona, se sabe su nombre, su edad, y la cantidad de horas que trabajó en total. Si su edad no está entre 18 y 65 años, al hacer que trabaje, se debe lanzar un error.
Cada vez que una persona trabaja en alguna propiedad por cierto tiempo, aumenta la cantidad total de horas trabajadas de esa persona en dicho tiempo, y disminuye la cantidad de horas necesarias de esa propiedad para que sea digna de habitarse (hasta llegar a 0).
Una familia está habilitada para acceder a una propiedad si:
La propiedad es habitable. Esto ocurre si la cantidad de horas que le quedan de trabajo para ser digna es 0, y aún no tiene habitantes que vivan en ella.
La familia cumplió la cantidad de horas necesaria para adquirir la propiedad. La cantidad de horas trabajada de la familia, es igual a la suma de la de todos sus integrantes.
El tamaño de esa propiedad es acorde a la familia (no queremos que el espacio esté mal utilizado). La vivienda debe soportar una cantidad de personas que esté entre la cantidad de integrantes de la familia, y esa cantidad + 1.
Si la vivienda es una casa, la cantidad de personas que soporta es la cantidad de ambientes que tiene.
Si es un departamento, se calcula a partir de su superficie total, con una persona cada 15m². Por ejemplo, si son 30m², entran 2 personas, pero si tiene 29m², solo entra 1.
Cuando se asigna una propiedad a una familia, se establece que la propiedad ahora tiene como habitantes a los miembros de esa familia. Y además, la familia deja de estar entre las familias que participan trabajando en el plan. Si la familia no estaba habilitada para quedarse con ella, se debe lanzar una excepción, y no debe suceder nada de lo anterior.
Generalidades
Generar el diagrama de clases de la solución general
Mostrar dónde se utilizan los siguientes conceptos:
Polimorfismo
Manejo de excepciones
No repetir lógica

Correcta delegación
Expresividad 
Colecciones
Para cada punto se solicita realizar uno o más test mostrando de la mejor manera la resolución.
Se pide:
Que el Estado incaute una propiedad (ya sea casa o departamento), guardando todos los datos que se necesiten de ella.
Hacer que una persona trabaje por cierta cantidad de horas sobre alguna propiedad.
Saber si una familia está habilitada para quedarse con cierta propiedad.
Dada una propiedad, conocer todas las familias que participan trabajando en el plan, que estén habilitadas para quedarse con ella.
Asignar una propiedad a una familia.
Intentar asignar todas las viviendas terminadas a todas las familias que sea posible.
Nuevos Requerimientos
Hay un cambio, y a partir de ahora, a las nuevas personas que se incorporan se le determina alguna habilidad especial que permite contabilizar de una manera diferente las horas trabajadas.
Por ejemplo, puede estar Pedro que sabe de electricidad y sus horas se computan con un 20% más, o María, que es decoradora y sus horas valen el doble. A su vez, podría estar Esteban, que es un muy desordenado y cada hora se computará como si fueran 45 minutos (un 75% de una hora). De pronto, si viene alguien y no se le descubre su forma de ser, se computan normalmente la cantidad de horas.
Así, pueden encontrarse tantas habilidades como sea necesario, pero previendo que si hay más de una persona con la misma habilidad se le reconozca la hora con el mismo porcentaje de variación (por ejemplo, si viene julia que también hace electicidad, es también 20 el porcentaje de incremento de las horas trabajadas).
Periódicamente, se analiza el desempeño de las personas y se puede modificar su habilidad, como así también se puede variar el porcentaje que corresponde a cada habilidad. 
Definir los objetos y clases que sean necesarios.


