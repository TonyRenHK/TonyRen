import csv

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

HeaderNames = ['Header A', 'Header B','Header c',' Header D',' Header E'] # Header A, Header B, Header C, Header D, Header ROW COUNT

#  change to tab delimited if needed 
Tabdelimiter=','


##################Function Start################
FileNumber = 1
Index= 1
#Read input file
with open(InputFilePath, 'rb') as f:
	# create new file
    fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')
    reader = csv.reader(f)
	# for loop all row in the input file
    for row in reader:
        Index=Index+1
	##write into the new file
        writer = csv.writer(fi,delimiter = Tabdelimiter)
        ##Add Sequence Number in last column
        row.append(str(Index))   
        writer.writerow(row)
	# Checking: if number of line is > CutOffLine (100) or size > CutSize(1000), will create new file
        if(Index>CutOffLine or fi.tell()>CutSize):
            
            ##writer = csv.writer(fi, fieldnames=HeaderNames,delimiter = Tabdelimiter)
            ##writer.writeheader()
            
            print 'Create New file: '+FileName+str(FileNumber)+'.csv' + ' with Size: '+str(fi.tell())
            Index=0
            FileNumber=FileNumber+1
            fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')

print 'END'
