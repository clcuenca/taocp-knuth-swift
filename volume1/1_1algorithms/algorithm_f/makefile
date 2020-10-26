COMPILER=kotlinc
KOTLINFLAGS=-include-runtime -d

algorithm_f:
	$(COMPILER) algorithm_f.kt $(KOTLINFLAGS) algorithm_f.jar

run:
	java -jar algorithm_f.jar < input.txt

clean:
	rm algorithm_f.jar