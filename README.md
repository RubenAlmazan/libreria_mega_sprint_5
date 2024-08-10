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

![image](https://github.com/user-attachments/assets/bbe5bb91-2fd7-43fd-8bcf-e5864b38d884)

![image](https://github.com/user-attachments/assets/82f5065c-0c80-4532-b754-4dac16dfc546)

![image](https://github.com/user-attachments/assets/356fcd7e-9f54-4104-8cee-17f6680daa51)

![image](https://github.com/user-attachments/assets/ef6777cf-dc7c-4ea6-b9e6-4a1dfbf9eb91)

![image](https://github.com/user-attachments/assets/797e0459-ed97-483c-b4b0-5037f01e8e06)

![image](https://github.com/user-attachments/assets/9eb0c92a-980a-4aa6-ae40-71ac7f437050)

![image](https://github.com/user-attachments/assets/d7160ee9-8865-4722-8cc4-6397b1532328)

![image](https://github.com/user-attachments/assets/7a9353cf-5583-4d2c-9a4b-41a731fbef26)

![image](https://github.com/user-attachments/assets/a7bc609c-2a9c-4a72-baa0-7f7532e0ef2f)

![image](https://github.com/user-attachments/assets/8ca5ac69-859e-42cd-943f-4267102b44e4)

![image](https://github.com/user-attachments/assets/4ee10afc-a97a-4268-b142-77991e7aef51)

![image](https://github.com/user-attachments/assets/ad21548e-515f-41cc-9d53-e72fc61effb0)

Vista para usuario administrador

![image](https://github.com/user-attachments/assets/fc71f59c-5122-4dd0-9a6b-66ad3cac93fd)

Vista para usuario promedio

![image](https://github.com/user-attachments/assets/f545b443-3027-43de-ac49-d1590e6eea5f)


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

![image](https://github.com/user-attachments/assets/65ee0091-9599-465d-848d-9ae47c763d02)

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
