#!/usr/sfw/bin/python
#"C:\Program Files\OpenOffice.org 2.4\program\python.bat" C:\Sites\gambettelirmm\TreecloudDistribution\treecloud.py stoplist=C:\Sites\GambetteLirmm\TreecloudDistribution\StoplistEnglish.txt nbwords=30 distance=hyperlex unit=1 color=chronology C:\TreeCloud\BBC1.txt
#"C:\Program Files\OpenOffice.org 2.4\program\python.bat" C:\Sites\gambettelirmm\TreecloudDistribution\treecloud.py words=C:\Treecloud\Racine\words.csv nbwords=30 distance=hyperlex unit=1 color=chronology C:\TreeCloud\Racine\Phedre.txt

#####################################################
# Copyright 2008-2009 Philippe Gambette
# 
# This file is part of TreeCloud v1.3 (13/12/2009).
#
# TreeCloud is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# TreeCloud is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with TreeCloud.  If not, see <http://www.gnu.org/licenses/>.
# 
# For more information:
# http://www.treecloud.org
#####################################################


import sys, os, re, string, time
from TreecloudFunctions import *
from math import *



#------------------------------
# analyze and load parameters
#------------------------------
args={}
i=1;
thefile="";
while i<len(sys.argv):
        res=re.search("(.*)[=](.*)",sys.argv[i])
        if res:
                args[res.group(1)]=res.group(2)
        else:
                thefile=sys.argv[i]
        i+=1

if not(args.has_key("minnb")):
        args["minnb"]=-1
else :
        args["minnb"]=int(args["minnb"])
minnb=args["minnb"];

if not(args.has_key("nbwords")):
        if minnb==-1:
                args["nbwords"]=30
        else :
                args["nbwords"]=-1
else :
        args["nbwords"]=int(args["nbwords"])
nbwords=args["nbwords"];

if minnb<1:
        minnb=1


if not(args.has_key("window")):
        args["window"]="30"
winSize=int(args["window"]);

if not(args.has_key("step")):
        args["step"]="1"
step=int(args["step"]);

if not(args.has_key("distance")):
        args["distance"]="jaccard"
theformula=args["distance"];

if not(args.has_key("unit")):
        args["unit"]="1"
unit=int(args["unit"]);

if not(args.has_key("normat")):
        args["normat"]="auto"
normat=args["normat"];

if not(args.has_key("color")):
        args["color"]="chronology"
color=args["color"];

if not(args.has_key("sepchar")):
        args["sepchar"]=""
sepchar=args["sepchar"];

if not(args.has_key("splitstreepath")):
        args["splitstreepath"]="C:\TreeCloud\SplitsTree.lnk"
splitstreepath=args["splitstreepath"];

if not(args.has_key("customcolor")):
        args["customcolor"]=" "
customcolor=args["customcolor"];

if not(args.has_key("customsize")):
        args["customsize"]=" "
customsize=args["customsize"];

if not(args.has_key("dendropath")):
        args["dendropath"]=""
dendropath=args["dendropath"];


# Build the tree cloud
# * thefile contains the address of the text file
# * winSize is the size of the sliding window
# * step is the sliding step of the sliding window
# * minnb is the minimum number of occurrences of the words in the treecloud.
#   -1 if not set
# * nbwords is the minimum number of words in the treecloud.
#   -1 if not set, 30 if not set and minnb not set
# * formula contains the name of the cooccurrence distance formula to apply
# * normat contains a string for the normalization method to transform
#   the distance matrix into a [0,1] matrix (affine,linear,log,auto)
# * unit equals 1 if the edges of the treecloud have the same length, 0 otherwise
# * color is a string, name of the color set (yahoo,berry,chronology...)
# * splitstreepath contains the path of the program SplitsTree used to draw the tree cloud
# * sepchar contains a string with a special character used to separate sliding windows (alternative to winsize)
# * dendropath contains the path of Dendroscope if used instead of SplitsTree to draw the tree cloud
def buildTreeCloud(thefile,minnb,nbwords,winSize,step,formula,normat,unit,color,splitstreepath,dendropath,sepchar):
        textPlusWordlist=openText(thefile,sepchar)
        print "Computing word frequencies..."
        text=textPlusWordlist[0]
        wordlist=textPlusWordlist[1]
        
        print len(text)," words - ",len(wordlist),"different words."
        #saveTenWordsPerLine(thefile)
        #separateLines(thefile)
        
        #------------------------------
        # wordlist now contains all words of the text as keys
        # whose associated values are nb of occurrences
        #------------------------------
        
        freqs=sortByFrequency(wordlist)        
        #------------------------------
        # freqs is a dict which associates for any n: a dict of all words which appeared n times (in decreasing order)
        #------------------------------
        print "Word frequencies computed."
        
        #------------------------------
        # load stoplist
        #------------------------------
        if args.has_key("stoplist"):
                stoplist=loadStoplist(args["stoplist"])
                print "Stoplist loaded."
        else :
                stoplist={}

        #------------------------------
        # save words with associated frequency into a csv file
        #------------------------------
        saveFrequencies(freqs,stoplist,thefile+".freqs.txt")
        print "Saved word frequencies (to use in TagCloud Builder for example)."
        
        #------------------------------
        # compute list of most frequent words
        #------------------------------
        if nbwords<1:
                nbwords=len(text)
        if args.has_key("words"):
        # if a word list is imposed, keep only words inside it
                theResult=imposedWordList(freqs,loadStoplist(args["words"]),sepchar)
                print "Word list",args["words"],"loaded."
        else :
                theResult=wordList(freqs,stoplist,minnb,nbwords,sepchar)
        keptWordsId=theResult[0]
        keptWords=theResult[1]
        keptWordsFrequencies=theResult[2]
        

        #------------------------------
        # keptWords now associates all kept words to their id (integer)
        # keptWordsId is the reverse map (associates integer to word)
        #------------------------------

        #------------------------------
        # filter text: remove all words not in keptWords from table "text"
        #------------------------------        
        text = filterText(text,keptWordsId,sepchar)
        #print text

        #------------------------------
        # compute cooccurrence matrix from filtered text:
        #------------------------------
        print "Starting cooccurrence computation..."
        if sepchar=="":
                coocc = computeCooccurrence(text,keptWordsId,winSize,step)
        else :
                coocc = computeCooccurrenceDisjoint(text,keptWordsId,sepchar)
        print "Cooccurrences computed..."
        #print coocc
                
        #------------------------------
        # compute distance matrix from cooccurrence matrices:
        #------------------------------
        distance = normalizeMatrix(distanceFromCooccurrence(coocc,formula),normat)
        if normat=="log":
                distance = normalizeMatrix(distance,"linear")
        print "Distance matrix computed..."

        #------------------------------
        # compute arboricity of the distance matrix:
        #------------------------------
        #print "Computing arboricity..."
        #arboricity=computeArboricity(distance)
        #print "Discrete arboricity:",arboricity[0];
        #print "Continuous arboricity:",arboricity[1];
        
        #------------------------------
        # transform distance matrix into CSV File:
        #------------------------------
        exportToCsv(distance,keptWords,thefile+"."+formula+".csv")
        
        #------------------------------
        # transform distance matrix into Nexus File:
        #------------------------------
        exportToNexus(distance,keptWords,thefile+"."+formula,unit)
        
        #------------------------------
        # transform Nexus File into Nexus Tree through SplitsTree:
        #------------------------------
        print "Launching SplitsTree from path",splitstreepath,"to compute the tree."
        invisible=1
        nexusOrders(distance,keptWords,thefile+"."+formula,invisible)
        #print splitstreepath
        if invisible==1:
                os.system('""'+(splitstreepath)+'" +g false +s false -i "'+thefile+"."+formula+'.nexorders""')
        else:
                os.system('""'+(splitstreepath)+'" -i "'+thefile+"."+formula+'.nexorders""')
        print "Tree computed by SplitsTree."
        
        #------------------------------
        # read tree splits from Nexus file
        #------------------------------
        #splits=splitsFromNexus(keptWordsId,thefile+"."+formula)
        
        #------------------------------
        # color Nexus file
        #------------------------------        
        print "Coloring the tree..."
        colorNexus(keptWordsId,keptWordsFrequencies,thefile+"."+formula,text,color,customcolor,customsize,distance,dendropath)
        print "Tree colored."
        if dendropath=="":
                 print "Displaying the tree cloud in SplitsTree..."
                 os.system('""'+splitstreepath+'" -i "'+thefile+"."+formula+'.colored.nexus""')
        else:
                 print "Displaying the tree cloud in Dendroscope..."
                 os.system('""'+dendropath+'" -x "source file=\''+thefile+"."+formula+'.colored.dendrorders\';""')


if os.path.isfile(thefile):
        print "Loading the text file..."
        buildTreeCloud(thefile,minnb,nbwords,winSize,step,theformula,normat,unit,color,splitstreepath,dendropath,sepchar)
else:
        if re.search("help",thefile):
                print ""
                print "==== HELP ON TREECLOUD ===="
                print "treecloud [options] <filename>"
                print ""
                print "The list of words and frequencies is written in <filename>.freqs.txt"
                print "This file can be used by TagCloudBuilder to build a tag cloud."
                print ""                
                print "The distance matrix is written in <filename>.csv, and in the Nexus"
                print "format in <filename>.nexus."
                print ""
                print "***OPTIONS:***"
                print ""
                print "stoplist=<filename>: <filename> is used as a stoplist, i.e. each line" 
                print "  of the file stored in <filename> contains a word which will not be"
                print "  considered during the rest of the analysis."
                print ""
                print "words=<filename>: only words present in <filename> (one word per" 
                print "  line) will be kept for the analysis."
                print ""
#                print "savewords=<filename>: the list of words with associated number of" 
#                print "  occurrences is stored in <filename>."
#                print ""
                print "minnb=<n>: the treecloud contains words appearing at least n times."
                print ""
                print "nbwords=<n>: the treecloud contains at most nbwords words."
                print "  default: n=30"
                print ""
                print "window=<n>: width of the sliding window for cooccurrence distance."
                print "  default: n=30"
                print ""
                print "step=<n>: sliding step of the sliding window for cooccurrence"
                print "  distance. If you use n=30 for parameter window=30 then you only"
                print "  consider disjoint windows for cooccurrence computation."
                print "  default: n=1 (most accurate)"
                print ""
                print "sepchar=<string>: separation character to separate cooccurrence"
                print "  windows (instead of using sliding windows of constant width)"
                print "  default: not used, see parameter 'window'"
                print "           use sepchar=aaaaaaa (string in lower case only, do not"
                print "           use a punctuation mark)."
                print ""                
                print "distance=<formula>: <formula> is chosen to compute the cooccurrence"
                print "distance. Possible values for <formula> (see Evert's PhD thesis):"
                print "chisquared mi liddell dice jaccard gmean hyperlex ms oddsratio"
                print "zscore loglikelihood poissonstirling"
                print ""
                print "normat=<string>:normalization method to transform the distance matrix"
                print "  into a [0,1] matrix (affine,linear,log,auto)"
                print "  default: auto"
                print ""
                print "splitstreepath=<path>: path of the program SplitsTree (splitstree.org)"
                print "  used to compute the tree and draw the tree clouds. Please avoid spaces"
                print "  in the path."
                print "  default: C:\TreeCloud\SplitsTree.lnk"
                print ""
                print "dendropath=<path>: path of the program Dendroscope (dendroscope.org)"
                print "  used to draw the tree clouds instead of SplitsTree."
                print "  Please avoid spaces in the path."
                print ""
                print "unit=<b>: tree edges with unit length."
                print "  default: b=1, otherwise set b=0"
                print ""
                print "color=<string>: name of the color set (chronology,dispersion,chronodisp,berry,yahoo)."
                print "  default: chronology"
                print ""
                print "customcolor=<path>: path of a csv file containing words in the first column"
                print "  and 3 integers in the next 3 columns"
                print ""
                print "customsize=<path>: path of a csv file containing words in the first column and"
                print "  font references in the second one. Example: Arial-PLAIN-14"
                print ""

        else:   
                
                print filename," - file does not exist!"
                print "Please use option help to display the possible parameters."
                
                
                
                

