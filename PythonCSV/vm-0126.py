HEADERROWCOUNT='HEADERROWCOUNT'



##Change variable below if needed
## variable 'InputFileHeader' is the path of your input Header file
InputFileHeader='/home/oracle/Desktop/Input/input2.csv'

## variable 'InputFilePath' is the path of your input detail file
InputFilePath='/home/oracle/Desktop/Input/input.csv'

## variable 'OFilePath' is the path of your output folder
OFilePath='/home/oracle/Desktop/Output/'
## variable 'FileName' is output file name in the output folder
FileName='DetailName'
## variable 'HeadFileName' is output header file name in the output folder
HeadFileName='HeaderName'

## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=4
## variable 'CutSize' is the Number of size need to split in input file
CutSize=1000000000 # (pointer) 1000 pointer =1k
Tabdelimiter='|'

##################Function Start################


FileNumber = 1
Index= 0

##Read Header
ReaderHeader = open(InputFileHeader,'r')
Inputline=ReaderHeader.readline()
HeaderNames=Inputline
ReaderHeader.close()


#Read input Detail file


fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'w')
spamReader = open(InputFilePath,'r')
Inputline=spamReader.readline()

while Inputline:
    Index=Index+1
    print >> fi,Inputline[0:len(Inputline)-1]#+Tabdelimiter+str(Index)
    Inputline=spamReader.readline()
    
    if(Index>CutOffLine or fi.tell()>CutSize):
        fi.close()
        #write in header
        fi = open(OFilePath+HeadFileName+str(FileNumber)+'.csv', 'w')
        templine =HeaderNames.replace(HEADERROWCOUNT, str(Index))
        print >> fi,templine #templine[0:len(templine)-1]
        fi.close()

        ##create new file
        Index=0
        FileNumber=FileNumber+1
        fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')

        
if(Index>0):
   fi = open(OFilePath+HeadFileName+str(FileNumber)+'.csv', 'w')
   templine =HeaderNames.replace(HEADERROWCOUNT, str(Index))
   print >> fi,templine #templine[0:len(templine)-1]
   fi.close()
        
fi.close()

