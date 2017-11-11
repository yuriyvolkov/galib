What the examples do
-------------------------------------------------------------------------------



graphic     (available only in the UNIX distribution)
	You can learn a great deal by watching the genetic algorithm evolve.
	This directory contains two examples that show populations of solutions
	evolving in real time.  Both programs use X resources as well as
        command-line arguments to control their behavior.  You can also use a
        standard GAlib settings file.  The programs will compile with either
	the Motif or athena widget set.

        The first example has a simple X windows interface that lets you start,
        stop, restart, and incrementally evolve a population of indivdiuals.
	The objective function is a continuous function in two variables with
	concentric rings and a maximal value located in the center.
        You can see the evolution in action, so it becomes very obvious if
        your operators are not working correctly or if the algorithm is
        converging prematurely.  You can choose between 3 different genetic
        algorithms, 2 different genomes (real or binary-to-decimal), and 4
        different functions.

        The second example shows solutions to the travelling salesman problem 
        evolving in real time.  You can compare three different algorithms:
    	simple, steady-state, and deterministic crowding.

   gnu      (available only in the UNIX distribution)
	This directory contains the code for an example that uses the BitString
        object from the GNU class library.  The example illustrates how to 
        incorporate an existing object (in this case the BitString) into a
        GAlib Genome type.  The gnu directory contains the source code needed
        for the BitString object (taken from the GNU library) plus the two
        files (bitstr.h and bitstr.C) needed to define the new genome type and
        the example file that runs the GA (gnuex.C).

pvmind      (available only in the UNIX distribution)
        This directory contains code that illustrates how to use GAlib with
	PVM in a master-slave configuration wherein the master process is the
	genetic algorithm with a single population and each slave process is
	a genome evaluator.  The master sends individual genomes to the slave
	processes to be evaluated then the slaves return the evaluations.

pvmpop      (available only in the UNIX distribution)
        This directory contains code that illustrates a PVM implementation of
	parallel populations.  The master process initiates a cluster of slaves
	each of which contains a single population.  The master process 
	harvests individuals from all of the distributed populations.  With a
        few modifications you can also use this example with the deme GA from
        example 25 (it uses migration to distribute diversity between pops).
