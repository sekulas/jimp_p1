all:
	gcc src/main.c src/queue.c src/bfs.c src/reader.c src/graph.c -lm -ggdb

testnsp1:
	./a.out -s data/not_connected_graph1.txt -b 1 -e 2
testsp1:
	./a.out -s data/graph1 -b 1 -e 2

online:
	gcc src/tester.c src/graph.c src/reader.c src/dijkstra.c src/priority_queue.c -lm
makegraph:
	./a.out c data/split1.txt pokaz.graphml
clean:
	-rm *.o 

