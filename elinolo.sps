SET SEED=63555. 
DATASET ACTIVATE DataSet1. 
USE ALL. 
do if $casenum=1. 
compute #s_$_1=1000. 
compute #s_$_2=2199. 
end if. 
do if #s_$_2 > 0. 
compute filter_$=uniform(1)* #s_$_2 < #s_$_1. 
compute #s_$_1=#s_$_1 - filter_$. 
compute #s_$_2=#s_$_2 - 1. 
else. 
compute filter_$=0. 
end if. 
VARIABLE LABELS filter_$ '1000 from the first 2199 cases (SAMPLE)'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.


