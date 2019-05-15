# docker-crunch
Script para ejecutar crunch desde docker.

<h1>Instalación</h1>

git clone https://github.com/daniel2005d/docker-crunch.git
cd docker-crunch
docker build -t crunch .

<h1>Uso</h1>
<h3>Variables </h3>
<ul>
  <li>min: Tamaño minimo de la cadena</li>
  <li>max: Tamaño maximo  de la cadena</li>
  <li>charset: Combinación de caracteres a usar
    
      @ Minusculas
      , Mayuscula
      % Números
      ^ Simbolos
      
    
  </li>
  <li>lines: Cantidad de lineas a generar .</li>
  <li>output: Nombre de archivo de salida</li>
  </ul>
<ul>
  <li>docker run -e min=2 -e max=2</li>
  <li>docker run -e min=2 -e max=2 -e charset=@% -e lines=10</li>
  <li>docker run -v /tmp:/tmp -e min=2 -e max=2 -e charset=@% -e lines=10</li>
</ul>
