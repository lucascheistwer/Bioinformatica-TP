# Guía de ejecución

- Instalar EMBOSS:
	- ``sudo apt-get install emboss``
- Instalar base de datos PROSITE:
	- Descargar archivos prosite.dat y prosite.doc desde https://ftp.expasy.org/databases/prosite/
	- Ejecutar ``sudo prosextract`` en la línea de comando e indicar la ruta de los archivos prosite.dat y prosite.doc descargados
- Ejecutar el script Ex5.pl con cada uno de los archivos fasta utilizados en el ejercicio 1
	- ``perl Ex5.pl 0.fasta``
	- ``perl Ex5.pl 1.fasta``
	- ``perl Ex5.pl 2.fasta``
- Ejecutar el comando ``patmatmotifs`` para cada uno de los archivos fasta utilizados en el ejercicio 1
	- ``patmatmotifs -full -sequence 0.fasta -outfile 0.patmatmotifs``
	- ``patmatmotifs -full -sequence 1.fasta -outfile 1.patmatmotifs``
	- ``patmatmotifs -full -sequence 2.fasta -outfile 2.patmatmotifs``
