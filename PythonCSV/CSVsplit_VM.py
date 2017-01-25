HEADERROWCOUNT='HEADERROWCOUNT'


##FUNCTION: Over Write Header in the File, and will replace 'HEADERROWCOUNT' to total line number
def OverWriteFile( IPName,TotalLines ):
    list=[]
    data_file = open(IPName,'r')
    lines = data_file.readline()
    lines=lines.replace(HEADERROWCOUNT, TotalLines)
    while lines:
        list.append(lines)
        lines=data_file.readline()
    data_file.close()

    out_data=open(IPName, 'w')
    for line in list:
        out_data.write(line)
    out_data.close()
    return
#########Function End


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
print >> fi,HeaderNames[0:len(HeaderNames)-1]
Inputline=spamReader.readline()

while Inputline:
    Index=Index+1
    print >> fi,Inputline[0:len(Inputline)-1]+Tabdelimiter+str(Index)
    Inputline=spamReader.readline()
    
    if(Index>CutOffLine or fi.tell()>CutSize):
        fi.close()
        OverWriteFile(OFilePath+FileName+str(FileNumber)+'.csv',str(Index))
        Index=0
        FileNumber=FileNumber+1
        fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
        print >> fi,HeaderNames[0:len(HeaderNames)-1]
OverWriteFile(OFilePath+FileName+str(FileNumber)+'.csv',str(Index))      
fi.close()
