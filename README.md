README for replicating Howcroft & Demberg 2017
==============================================

This is the repo for details on how to replicate the findings reported in:

Howcroft, David M., and Vera Demberg. 2017. "Psycholinguistic Models of Sentence Processing 
Improve Sentence Readability Ranking". Proc. of the 15th Conference of the European Chapter
of the Association for Computational Linguistics: Volume 1, Long Papers. Pages 958-968.
Valencia, Spain, April 3-7, 2017. Association for Computational Linguistics.

[ACL Anthology](http://aclanthology.info/papers/psycholinguistic-models-of-sentence-processing-improve-sentence-readability-ranking)
||
[PDF](http://aclweb.org/anthology/E17-1090)

The first couple of sections describe the resources used and how to install them.
The Instructions section then describes how to use them to replicate our results.
References come after that, followed with some metadata for this document.

Corpora
-------

### English and Simple English Wikipedia (ESEW)

The English and Simple English Wikipedia (ESEW) was developed in Hwang et al. 2015.
The resource is available from the authors on [the project page](http://ssli.ee.washington.edu/tial/projects/simplification/)

For our work we used only the `good` alignments.
You can download the files from the command-line using:

    wget http://ssli.ee.washington.edu/tial/projects/simplification/aligned-good-0.67.txt
    
The download is about 40 MB in size.


### One Stop English (OSE)

The One Stop English corpus was developed by Sowmya Vajjala using data from [onestopenglish.com].
The corpus is available from her BitBucket repo: [OSE Corpus](https://bitbucket.org/nishkalavallabhi/complexity-features/src/3cf60342c7ec82371ea2d0ef1bb290e7b0c9bac2/corpus/OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt).

You can fetch the data with:

    wget https://bitbucket.org/nishkalavallabhi/complexity-features/raw/3cf60342c7ec82371ea2d0ef1bb290e7b0c9bac2/corpus/OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt

The download is about 700 KB in size.

External Resources
------------------

### For calculating surprisal and embedding depth

Our surprisal and embedding depth features are extracted by running the `ModelBlocks` parser in complexity output mode.
The main distribution for the parser is [on Github](https://github.com/modelblocks/modelblocks-release).

### For calculating integration cost

Our integration cost features use a locally-developed tool called `icy-parses` (formerly icToolDist).
This is available [on Github](https://github.com/dmhowcroft/icy-parses) as well.

### For calculating propositional idea density

Our propositional idea density features depend on the [adapted IDD3 repo](https://github.com/dmhowcroft/idd3) and therefore also on the Stanford dependency parser.

Instructions
------------

**Under development:** This README is still under development and will be supplemented with all of the necessary scripts to automate the replication of our results.


References
----------

Howcroft, David M., and Vera Demberg. 2017. 
"Psycholinguistic Models of Sentence Processing Improve Sentence Readability Ranking". 
Proc. of the 15th Conference of the European Chapter of the Association for Computational Linguistics: Volume 1, Long Papers. 
Pages 958-968.
Valencia, Spain, April 3-7, 2017. Association for Computational Linguistics.
[ACL Anthology](http://aclanthology.info/papers/psycholinguistic-models-of-sentence-processing-improve-sentence-readability-ranking)
||
[PDF](http://aclweb.org/anthology/E17-1090)

Hwang, William, Hannaneh Hajishirzi, Mari Ostendorf, and Wei Wu. 2015. 
"Aligning Sentences from Standard Wikipedia to Simple Wikipedia".
Proc. of the 2015 COnference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies (NAACL-HLT).
Pages 211-217.
Denver, Colorado, USA. Association for Computational Linguistics.
[ACL Anthology](http://aclanthology.info/papers/aligning-sentences-from-standard-wikipedia-to-simple-wikipedia)
||
[PDF](http://aclweb.org/anthology/N15-1022)


Metadata
--------

Written by David M. Howcroft, April 2017.
