Program exemple_fichiers;
uses crt;

TYPE files = text;

VAR
f: files;
q,p: string;


BEGIN
	clrscr;
	assign(f,'c:\FPC\3.0.0\bin\i386-win32\TP ALGO FICHIERS\fichier_cours.txt');
	reset(f); //=OUVRIR en algo
	readln(f,p); //=LIRE en algo
	writeln(p);
	close(f);
	readln;
	rewrite(f); //REECRIRE efface les donnees sur le doc
	
	p:='Ce doc a ete reecrit';
	writeln(f,p);
	close(f);
	reset(f);
	readln(f,q);
	writeln(q);
	close(f);
	readln;

	p:='Cette page etait vide';
	assign(f,'c:\FPC\3.0.0\bin\i386-win32\TP ALGO FICHIERS\fichier_cours2.txt');
	rewrite(f);//=ECRIRE en algo, ici on crée le fichier avec rewritr car il n'existe pas encore
	writeln(f,p);
	close(f);
	reset(f);
	readln(f,q);
	writeln(q);
	close(f);
	readln;

	p:='Cette phrase n''etait pas la avant';
	Append(f);//=AJOUTER en algo, le pointeur se place en fin du document
	writeln(f,p);
	close(f);
	reset(f);
	While not eof(f) do
	begin
	
	readln(f,q);
	writeln(q);
	
	end;
	close(f);
	readln;



END.

	
