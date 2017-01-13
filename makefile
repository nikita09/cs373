clean:
	cd examples; make clean
	@echo
	cd exercises; make clean

config:
	git config -l

format:
	autopep8 --in-place collatz/Collatz.py
	autopep8 --in-place collatz/RunCollatz.py
	autopep8 --in-place collatz/TestCollatz.py

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:fareszf/cs373.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete              \
    --include "Hello.py"                     \
    --include "Assertions.py"                \
    --include "UnitTests1.py"                \
    --include "UnitTests2.py"                \
    --include "UnitTests3.py"                \
    --include "Coverage1.py"                 \
    --include "Coverage2.py"                 \
    --include "Coverage3.py"                 \
    --include "Exceptions.py"                \
    --include "StackVsHeap.py"               \
    --include "Types.py"                     \
    --include "Operators.py"                 \
    --include "Variables.py"                 \
    --include "Iteration.py"                 \
    --include "Yield.py"                     \
    --include "Comprehensions.py"            \
    --include "Iterables.py"                 \
    --include "FunctionKeywords.py"          \
    --include "FunctionDefaults.py"          \
    --include "FunctionUnpacking.py"         \
    --include "FunctionTuple.py"             \
    --include "FunctionDict.py"              \
    --include "Functions.py"                 \
    --include "Cache.py"                     \
    --include "RegExps.py"                   \
    --include "Reflection.py"                \
    --include "Store9.py"                    \
    --exclude "*"                            \
    ../../examples/python/ examples
	@rsync -r -t -u -v --delete              \
    --include "Bookstore1.dtd.xml"           \
    --include "Bookstore1.xml"               \
    --include "Bookstore2.dtd.xml"           \
    --include "Bookstore3.xml"               \
    --include "Bookstore3.xsd.xml"           \
    --exclude "*"                            \
    ../../examples/xml/ examples
	@rsync -r -t -u -v --delete              \
    --include "Bookstore.json"               \
    --include "Bookstore.schema.json"        \
    --exclude "*"                            \
    ../../examples/json/ examples
	@rsync -r -t -u -v --delete              \
    --include "ShowDatabases.sql"            \
    --include "ShowGrants.sql"               \
    --include "ShowCharacterSet.sql"         \
    --include "ShowCollation.sql"            \
    --include "ShowVariables.sql"            \
    --include "ShowEngines.sql"              \
    --include "Create.sql"                   \
    --include "Select.sql"                   \
    --include "Join.sql"                     \
    --include "Joins.sql"                    \
    --include "Subqueries.sql"               \
    --include "Sets.sql"                     \
    --include "Aggregation.sql"              \
    --include "Insert.sql"                   \
    --include "Delete.sql"                   \
    --include "Update.sql"                   \
    --exclude "*"                            \
    ../../examples/sql/ examples
	@rsync -r -t -u -v --delete              \
    --include "Store1.java"                  \
    --include "Store2.java"                  \
    --include "Store3.java"                  \
    --include "Store4.java"                  \
    --include "Store5.java"                  \
    --include "Store6.java"                  \
    --include "MethodOverriding1.java"       \
    --include "MethodOverriding2.java"       \
    --include "DynamicBinding.java"          \
    --include "Store7.java"                  \
    --include "Reflection.java"              \
    --include "Store8.java"                  \
    --include "Store9.java"                  \
    --include "Clone.java"                   \
    --exclude "*"                            \
    ../../examples/java/ examples
	@rsync -r -t -u -v --delete              \
    --include "IsPrime1.py"                  \
    --include "IsPrime1T.py"                 \
    --include "IsPrime2.py"                  \
    --include "IsPrime2T.py"                 \
    --include "Factorial.py"                 \
    --include "FactorialT.py"                \
    --include "Reduce.py"                    \
    --include "ReduceT.py"                   \
    --include "RMSE.py"                      \
    --include "RMSET.py"                     \
    --include "Map.py"                       \
    --include "MapT.py"                      \
    --include "RangeIterator.py"             \
    --include "RangeIteratorT.py"            \
    --include "Range.py"                     \
    --include "RangeT.py"                    \
    --include "Decorators.py"                \
    --include "DecoratorsT.py"               \
    --include "Select.py"                    \
    --include "SelectT.py"                   \
    --include "Project.py"                   \
    --include "ProjectT.py"                  \
    --include "CrossJoin.py"                 \
    --include "CrossJoinT.py"                \
    --include "ThetaJoin.py"                 \
    --include "ThetaJoinT.py"                \
    --include "NaturalJoin.py"               \
    --include "NaturalJoinT.py"              \
    --exclude "*"                            \
    ../../exercises/python/ exercises
	@rsync -r -t -u -v --delete              \
    --include "SingletonPattern.java"        \
    --include "SingletonPatternT.java"       \
    --include "CreationalPatterns.java"      \
    --include "FactoryMethodPattern.java"    \
    --include "FactoryMethodPatternT.java"   \
    --include "AbstractFactoryPattern.java"  \
    --include "AbstractFactoryPatternT.java" \
    --include "PrototypePattern.java"        \
    --include "PrototypePatternT.java"       \
    --exclude "*"                            \
    ../../patterns/java/ exercises
	@rsync -r -t -u -v --delete              \
    --include "Collatz.py"                   \
    --include "RunCollatz.in"                \
    --include "RunCollatz.py"                \
    --include "RunCollatz.out"               \
    --include "TestCollatz.py"               \
    --include "TestCollatz.out"              \
    --exclude "*"                            \
    ../../projects/python/collatz/ collatz

push:
	make clean
	@echo
	git add .travis.yml
	git add examples
	git add exercises
	git add collatz
	git add makefile
	git commit -m "another commit"
	git push
	git status

status:
	make clean
	@echo
	git branch
	git remote -v
	git status

test:
	cd examples; make test
	@echo
	cd exercises; make test
	@echo
	cd collatz; make test
