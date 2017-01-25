##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='/home/oracle/Desktop/Input/input.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='/home/oracle/Desktop/Output/'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=4
## variable 'CutSize' is the Number of size need to split in input file
CutSize=1000000000 # (pointer) 1000 pointer =1k
Tabdelimiter='|'



##################Function Start################


FileNumber = 1
Index= 1
#Read input file
spamReader = open(InputFilePath,'r')

fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'w')

Inputline=spamReader.readline()
HeaderNames=Inputline
print >> fi,HeaderNames
Inputline=spamReader.readline()

while Inputline:
    Index=Index+1
    print >> fi,str(Inputline)+Tabdelimiter+str(Index)
    Inputline=spamReader.readline()
    
    if(Index>CutOffLine or fi.tell()>CutSize):
        fi.close()
        Index=0
        FileNumber=FileNumber+1
        fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
        print >> fi,HeaderNames
      
fi.close()
