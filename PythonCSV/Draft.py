output_write=open('/home/oracle/Desktop/Input/input2.csv','w')
print >> output_write, '112'
output_write.close() 


























import csv
import os
#constant variable, DO NO CHANGE!
HEADERROWCOUNT='HEADERROWCOUNT'


##FUNCTION: Over Write Header in the File, and will replace 'HEADERROWCOUNT' to total line number (http://odiexperts.com/jython-beginners-guide-for-odi/)
def OverWriteFile( IPName,TotalLines ):
   source_file=open(IPName,'r')
   read_lines=source_file.readlines()
   if(len(read_lines)>0):
      read_lines[0]=read_lines[0].replace(HEADERROWCOUNT, TotalLines)
      output_write=open(IPName,'w')
      output_write.writelines(read_lines)
      source_file.close()
      output_write.close()
   return
#########Function End



##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='D:\\Input\\input.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='D:\\Output\\'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=500
## variable 'CutSize' is the Number of size need to split in input file
CutSize=10000 # (pointer) 1000 pointer =1k

## Header : Please do not change 'HEADERROWCOUNT' variable
#HeaderNames = ['Header A', 'Header B','Header c',' Header D',' Header E',HEADERROWCOUNT] # Header A, Header B, Header C, Header D, Header ROW COUNT

# Change to tab delimited if needed 
Tabdelimiter=','



##################Function Start################

FileNumber = 1
Index= 1
#Read input file
spamReader = csv.reader(open(InputFilePath))


for row in spamReader:
   print row
   HeaderNames=row
   break

#HeaderNames=InputFilelines[0]
fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
writer = csv.writer(fi,delimiter = Tabdelimiter)
writer.writerow(HeaderNames)

for row in spamReader:
   Index=Index+1
   ##write into the new file
   writer = csv.writer(fi,delimiter = Tabdelimiter)
   ##Add Sequence Number in last column
   row.append(str(Index))
   writer.writerow(row)
   if(Index>CutOffLine or fi.tell()>CutSize):
      #print 'Create New file: '+FileName+str(FileNumber)+'.csv' + ' with Size: '+str(fi.tell())
      fi.close()
      ## over write header
      OverWriteFile(OFilePath+FileName+str(FileNumber)+'.csv',str(Index))

      ##create new file
      Index=0
      FileNumber=FileNumber+1
      fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
      writer = csv.writer(fi,delimiter = Tabdelimiter)
      writer.writerow(HeaderNames)

## over write header in last file
OverWriteFile(OFilePath+FileName+str(FileNumber)+'.csv',str(Index))
    
fi.close()
print 'END'






























##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='/home/oracle/Desktop/Input/input2.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='D:\\Output\\'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=500
## variable 'CutSize' is the Number of size need to split in input file
CutSize=10000 # (pointer) 1000 pointer =1k

# Change to tab delimited if needed 
Tabdelimiter=','



##################Function Start################

FileNumber = 1
Index= 1
#Read input file
spamReader = open(InputFilePath,'r')

InputDatas=spamReader.readlines()


for row in InputDatas:
   print row
   HeaderNames=row
   break


output_write=open('/home/oracle/Desktop/Input/input2.csv','w')
print >> output_write, HeaderNames
output_write.close() 
















##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='/home/oracle/Desktop/Input/input.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='/home/oracle/Desktop/Output/'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=5
## variable 'CutSize' is the Number of size need to split in input file
CutSize=10 # (pointer) 1000 pointer =1k
Tabdelimiter='|'



##################Function Start################

FileNumber = 1
Index= 1
#Read input file
spamReader = open(InputFilePath,'r')

fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'w')

Inputline=spamReader.readline()
while Inputline:
   print >> fi, Inputline
   Inputline=spamReader.readline()
   Index=Index+1

fi.close()
  
  
  
  






##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='/home/oracle/Desktop/Input/input.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='/home/oracle/Desktop/Output/'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=5
## variable 'CutSize' is the Number of size need to split in input file
CutSize=10 # (pointer) 1000 pointer =1k
Tabdelimiter='|'



##################Function Start################

FileNumber = 1
Index= 1
#Read input file
spamReader = open(InputFilePath,'r')

InputDatas=spamReader.readlines()


for row in InputDatas:
   HeaderNames=row
   break
   
fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
print >> fi, HeaderNames

for row in InputDatas:
  Index=Index+1
  print >> fi, row+Tabdelimiter+str(Index)
  if(Index>CutOffLine or fi.tell()>CutSize):
  fi.close()
  Index=0
  FileNumber=FileNumber+1
  fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
  print >> fi,HeaderNames
  
fi.close()
  
  
  
  
  

output_write=open('/home/oracle/Desktop/Output/Output2.csv','w')
print >> output_write, HeaderNames
output_write.close() 






##Change variable below if needed
## variable 'InputFilePath' is the path of your input file
InputFilePath='/home/oracle/Desktop/Input/input2.csv'
## variable 'OFilePath' is the path of your output folder
OFilePath='/home/oracle/Desktop/Output/'
## variable 'FileName' is output file name in the output folder
FileName='FileName'
## variable 'CutOffLine' is the Number of line need to split in input file
CutOffLine=5
## variable 'CutSize' is the Number of size need to split in input file
CutSize=10 # (pointer) 1000 pointer =1k
Tabdelimiter='|'



##################Function Start################

FileNumber = 1
Index= 1
#Read input file
spamReader = open(InputFilePath,'r')

InputDatas=spamReader.readlines()


for row in InputDatas:
   HeaderNames=row
   break
   
fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'w')
print >> fi,HeaderNames

spamReader = open(InputFilePath,'r')
InputDatas=spamReader.readlines()

for row in InputDatas:
   Index=Index+1
   print >> fi, row
   
fi.close()
  
  
  
  
  

output_write=open('/home/oracle/Desktop/Output/Output2.csv','w')
print >> output_write, HeaderNames
output_write.close() 



































