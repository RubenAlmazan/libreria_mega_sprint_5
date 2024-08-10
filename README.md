# Libreria MEGA+ (Librería digital con Visual Basic 6) - (Quinto Sprint)

Proyecto realizado por: Rubén Almazán De la Torre

# Descripcion

Esta es una biblioteca digital donde se puede explorar una amplia gama de libros de diversos géneros literarios. En este nuevo sistema, es posible acceder al catálogo de libros, ya sea de manera individual o agrupada por género, y explorar todos los títulos disponibles. Además, cada libro cuenta con información completa, incluyendo autor, editorial, descripción, entre otros detalles. Este sistema ofrece otras funciones interesantes, como la posibilidad de guardar libros en una lista personalizada para leer más tarde, así como guardar títulos y/o géneros en una lista de favoritos. También permite marcar libros que no sean de nuestro agrado, con la opción de recuperarlos en cualquier momento. Se podrán mostrar recomendaciones de títulos según nuestras preferencias, y cada usuario podrá gestionar y administrar su usuario y contraseña según lo necesite. Por último, los usuarios administradores cuentan con una sección dedicada para añadir nuevos títulos al sistema, así como para editar y eliminar los registros de la biblioteca.
A nivel técnico, este sistema marca una nueva etapa de aprendizaje, ya que ha sido necesario implementar nuevas tecnologías y herramientas que son utilizadas en nuestro ámbito tecnológico, tales como la implementación de Visual Basic para la administración, gestión y construcción de todo el sistema, la creación e implementación de bases de datos para almacenar y gestionar el contenido de la plataforma, y la adaptación de la lógica de los formularios, módulos y botones de Visual Basic 6 para enlazar la base de datos con el sistema de librería, almacenar y gestionar los datos generados, y ejecutar las funciones diseñadas para este programa.

# Objetivos

--> Crear una base de datos utilizando SQL Server.

--> Implementar una interfaz gráfica funcional en Windows mediante formularios en Visual Basic 6.

--> Utilizar botones para la ejecución de funciones específicas.

--> Enlazar la base de datos con el sistema utilizando módulos.

--> Guardar los datos generados en la base de datos de SQL Server.

--> Crear perfiles de usuario para que cada persona pueda personalizar su experiencia dentro del sistema.


# Requerimientos técnicos

--> Visual Basic 6

--> SQL Server Management Studio 20

# Visualización del proyecto

![image](https://github.com/user-attachments/assets/045f090f-0148-4d49-bbae-2f7856ec2942)
<img alt="imagen" width="800"/>

![image](https://github.com/user-attachments/assets/4b1e2764-2d27-410d-8b6a-d532922c2df9)

![image](https://github.com/user-attachments/assets/288c89f1-3c34-4b4a-9a63-86f329bc5952)

![image](https://github.com/user-attachments/assets/51daa3d2-d593-40e3-93b8-f83001315312)

![image](https://github.com/user-attachments/assets/543563dd-a6eb-454a-9fe2-c3616797978a)

![image](https://github.com/user-attachments/assets/7aa3a758-fc1d-4f4d-8009-2209f1357f60)

![image](https://github.com/user-attachments/assets/e2b57215-eff4-4ef2-8421-4c55093780e6)

![image](https://github.com/user-attachments/assets/182db8e3-77db-4816-9783-7dbb680d1459)

![image](https://github.com/user-attachments/assets/cf36868c-e281-4051-ad0d-82963bb39fa5)

![image](https://github.com/user-attachments/assets/677ebbd6-aa4a-4ef8-bbaa-9902e22520eb)

![image](https://github.com/user-attachments/assets/320f4127-df42-4d2f-ad5f-e8ef4b00a7f8)

![image](https://github.com/user-attachments/assets/3b5f7e00-8c87-4d7b-88e0-e437c719b420)


Vista para usuario administrador

![image](https://github.com/user-attachments/assets/29dfefd1-d634-4db5-93a6-dd6511f2403e)

Vista para usuario promedio

![image](https://github.com/user-attachments/assets/f6be89d9-0432-49d8-9b6e-3affff06e4a4)

# Instrucciones para su instalacion

--> Descargar el proyecto.

--> Descomprimir la carpeta en la ubicación deseada.

--> Descargar e instalar Visual Basic 6.

--> Acceder a Visual Basic 6.

--> Seleccionar la opción de "Archivo" y luego, seleccionar "Abrir archivo".

--> En la ubicación donde se descargó la carpeta, abrir el archivo “programa_libreria_mega.vbp”.

¡Listo! El proyecto está disponible.

Para enlazar la base de datos al sistema:
--> Importe los datos de la carpeta “base_datos” en una base de datos en SQL Server.

--> Una vez importados, en Visual Basic 6, diríjase a la sección de módulos y en la siguiente línea, ingrese sus credenciales para que el sistema se conecte con la base de datos:

Con.Open "Driver={SQL Server}; 
    Server= TU SERVIDOR; 
    Database= NOMBRE DE TU BASE DE DATOS; 
    User Id= TU USUARIO; 
    Password= TU CONTRASEÑA;"
    
¡Listo! El proyecto estará conectado con su base de datos SQL Server.

# Descripción de como se realizó

Para llevar a cabo esta fase del proyecto, se realizaron los siguientes pasos:
La creación de la base de datos en SQL Server y su conexión con el sistema para mostrar los registros deseados y la implementación de Visual Basic 6 para la creación, gestión y administración de todas las funciones necesarias para este programa.

En primer lugar, la creación de la base de datos fue sencilla, ya que tengo experiencia previa con este gestor de base de datos en diversos proyectos. El verdadero desafío fue conectar esta base de datos con Visual Basic 6, un sistema de desarrollo nuevo para mí, con el que no estaba familiarizado. Con la ayuda de las sesiones impartidas, reforcé mis habilidades en bases de datos y adquirí el conocimiento necesario para conectar la base de datos con el sistema mediante módulos. En este caso, se optó por implementar ocho tablas en la base de datos. Tres de estas tablas se utilizaron para almacenar contenido general del sistema (usuario, género, catálogo), mientras que las otras cinco se enfocaron en las preferencias del usuario (contenido_leído, contenido_leer_más_tarde, contenido_favorito, género_favorito y contenido_eliminado). Además, se implementó un módulo en Visual Basic 6 para establecer la conexión con la base de datos. Esto permitió que, en cada formulario, solo fuera necesario llamar a la función del módulo para acceder a la base de datos.

Y por otro lado, la implementación de Visual Basic 6 para crear este sistema fue un gran desafio ya que era un sistema nuevo con el que no había trabajado. Aparte de la dificultad de no contar con mucha infomracion nueva disponible ya ue este puede ser conciderado como un sistema “antiguo” pero funcional. Tras una amplia invesitgacion y analaisis de diversos recursos en linea y gracias a los consejos impartidos por Jesús, aprendí sobre la importanciade este sistema, su sintaxis y sobre conceptos y herramientas referentes al uso de Visual Basic 6 como botones, formualrios y modulos; de esta maenra, tuve el conocmiento necesario para desarrollar todas las funciones presentadas en este sistema de liberia. En este caso, utilizando formularios y botones, se inició con el desarrollo de las sesiones personalizadas de los usuarios. Esto fue fundamental para desarrollar las siguientes funciones del sistema, ya que facilitó el proceso de registrar y mostrar los datos de acuerdo con las preferencias del usuario. Luego, se implementaron las diversas funciones del sistema, como mostrar los libros disponibles así como su información, marcarlos para leer más tarde, agregarlos a favoritos o clasificarlos como no deseados. También se incluyó la capacidad de mostrar recomendaciones personalizadas y permitir a los usuarios cambiar su nombre de usuario y contraseña según lo necesiten. Por último, para los usuarios administradores, se incorporó una función que permite crear nuevos registros de libros, editar los libros existentes y eliminarlos según sea necesario. De esta manera, fue posible desarrollar este sistema funcional de libreria digital. 

# Diagrama Entidad Relación

![image](https://github.com/user-attachments/assets/96bfb4c5-eadf-49e4-a570-fb2f4c83c704)

# Problemas conocidos

--> Entender la lógica de las diferentes funciones dentro de Visual Basic 6

--> Crear la conexión a la base de datos para acceder a los registros disponibles

# Retrospectiva

¿Qué hice bien?

Aprender sobre nuevos conceptos, sistemas y herramientas, y aplicar ese conocimiento para desarrollar funciones eficientes que permitieron el correcto funcionamiento de este sistema de biblioteca digital.

¿Qué no salió bien?

Tardar demasiado tiempo en realizar la conexión a la base de datos en el sistema y adaptarse a la lógica de formularios, módulos y botones en Visual Basic 6.

¿Qué puedo hacer diferente?

Aprender en detalle la lógica de la sintaxis del sistema e implementar funciones más avanzadas utilizando otras herramientas de Visual Basic 6 para crear funciones más eficientes.
