RUNGHC=runghc
RUNMAKE=$(RUNGHC) Make.hs

GF_LIB_PATH=..

.PHONY: all present alltenses lang api math prelude test demo parse synopsis link compiled constructX clean

all: link prelude constructX present alltenses

present:
	$(RUNMAKE) present lang
	$(RUNMAKE) present api
	$(RUNMAKE) present symbolic

alltenses: 
	$(RUNMAKE) lang
	$(RUNMAKE) api
	$(RUNMAKE) symbolic

lang:
	$(RUNMAKE) lang

api:
	$(RUNMAKE) api

compatibility:
	$(RUNMAKE) present compat

prelude:
	gf -batch -path=prelude prelude/*.gf
	cp -p prelude/*.gfo ../prelude

constructX:
	gf -batch common/ConstructX.gf
	cp -p common/ConstructX.gfo ../prelude

MakeStructural:
	gf -batch */MakeStructural*.gf
	cp -p */MakeStructural*.gfo ../present
	cp -p */MakeStructural*.gfo ../alltenses

test:
	$(RUNMAKE) test

demo:
	gf -make -name=Demo0 demo/DemoBul.gf demo/DemoCat.gf +RTS -K48M
	gf -make -name=Demo1 demo/DemoDan.gf demo/DemoDut.gf demo/DemoEng.gf
	gf -make -name=Demo2 demo/DemoFin.gf +RTS -K48M
	gf -make -name=Demo3 demo/DemoFre.gf demo/DemoGer.gf demo/DemoIta.gf demo/DemoNor.gf demo/DemoPol.gf +RTS -K48M
	gf -make -name=Demo4 demo/DemoRon.gf +RTS -K48M
	gf -make -name=Demo5 demo/DemoRus.gf demo/DemoSpa.gf demo/DemoSwe.gf
	gf -make -name=Demo6 demo/DemoUrd.gf +RTS -K48M
	gf -make Demo0.pgf Demo1.pgf Demo2.pgf Demo3.pgf Demo4.pgf Demo5.pgf Demo6.pgf
	rm Demo?.pgf

demoex:
	echo "gr -number=100 -cat=S | l -treebank | ps -to_html | wf -file=resdemo.html" | gf Demo.pgf

parse:
	$(RUNMAKE) parse

synopsis:
	cd ../doc ; $(RUNGHC) MkSynopsis ; cd ../src

link:
	chmod a+x mkPresent mkMinimal

compiled:
	(cd .. && tar -zcf resource-compiled.tar.gz prelude alltenses present)

clean:
	$(RUNMAKE) clean

