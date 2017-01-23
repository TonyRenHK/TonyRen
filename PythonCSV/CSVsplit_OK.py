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
        fi.write(', '.join(row)+"\n")
		# Checking: if number of line is > CutOffLine (100) or size > CutSize(1000), will create new file
        if(Index>CutOffLine or fi.tell()>CutSize):
            Index=0
            print 'Create New file: '+FileName+str(FileNumber)+'.csv' + ' with Size: '+str(fi.tell())
            FileNumber=FileNumber+1
            fi = open(OFilePath+FileName+str(FileNumber)+'.csv', 'wb')

print 'END'
