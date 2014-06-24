## LaTeX ljuska za izradu doktorskog rada na Sveučilištu u Zagrebu.


* ljuska je (do na Arial font) prilagođena Dr.Sc.08 dokumentu
* primjerak radnje nalazi se u "doc" direktoriju.


Nekoliko natuknica (dok ne uhvatim vremena napisati malo bolju dokumentaciju)

* folder "bibliografija" zamišljen je za čuvanje .bib datoteka koje sadrže bibliografiju u BiBTeXu. 
* folder "doc" sadrži primjerak disertacije te će jednog dana sadržavati i dokumentaciju
* datoteka documet.tex je glavna (ishodišna) tex datoteka (NJU KOMPAJLIRATE!)
*  folder dodatno sadrži dodatne postavke poput paketa, glossaryja, dodatnih komandi i environmenta
* folder naslovnice sadrži naslovnice. Potrebno je editirati naslov.tex i prilagoditi odgovarajuće varijable. Nakon toga teba kompajlirati naslov.tex
* folder ostalo sadrži sazetak, zakljucak i slicno
* folder poglavlja sadrzi poglavlja i odgovarajuca potpoglavlja


*Kompajliranje*:
```
$ pdflatex document.tex
$ bibtex document.tex
$ pdflatex document.tex
$ pdflatex document.tex
# mozda i makeglossaries
```

Ako koristite linux onda je koristan alat 
[Latexmk](http://users.phys.psu.edu/~collins/software/latexmk-jcc/)
 (koristi datoteku latexmkrc) pa mozete zamijeniti prijašnje linije samo sa
```
$ latexmk -pdf document.tex
```
