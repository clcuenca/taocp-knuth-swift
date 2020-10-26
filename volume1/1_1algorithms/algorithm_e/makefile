COMPILER=kotlinc
KOTLINFLAGS=-include-runtime -d

algorithm_e:
	$(COMPILER) algorithm_e.kt $(KOTLINFLAGS) algorithm_e.jar

run:
	java -jar algorithm_e.jar < input.txt

clean:
	rm algorithm_e.jar