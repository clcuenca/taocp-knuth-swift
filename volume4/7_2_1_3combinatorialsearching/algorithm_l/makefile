COMPILER=kotlinc
KOTLINFLAGS=-include-runtime -d

algorithm_l:
	$(COMPILER) algorithm_l.kt $(KOTLINFLAGS) algorithm_l.jar

run:
	java -jar algorithm_l.jar

clean:
	rm algorithm_l.jar