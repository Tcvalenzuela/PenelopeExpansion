import argparse
parser = argparse.ArgumentParser(description= "add N val at beg and end of bed rec")
parser.add_argument("-bed", "--b", help="output Bed file",type=str)
parser.add_argument("-number", "--N", help="N val to be add")
parser.add_argument("-out", "--o", help="output file",type=str)
arg = parser.parse_args()
filehandle = open(arg.b)
oWriter=open(arg.o, "w")
N=int(arg.N)
for line in filehandle:
    stripped=line.split("\t")
    if stripped[1] > stripped[2]:
        end = str(int(stripped[1]) + N)
        start = str(int(stripped[2]) - N)
        if int(start) < 0:
            start=0
        if int(end)<0:
            end=0
    else:
        end = str(int(stripped[2]) + N)
        start = str(int(stripped[1]) - N)
        if int(start) < 0:
            start=0
        if int(end)<0:
            end=0
    oWriter.write(stripped[0]+ "\t" +str(start) + "\t"+ str(end)+ "\n")
