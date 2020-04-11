import pandas as pd
from PIL import Image, ImageDraw, ImageFont

def splitText(line, width):
    line=str(line)
    list = []
   
    while (len(line)>=width):
        list.append(line[0:width])
        line = line[(width+1):]
    
    return(list);

x = splitText("abcabcabcdb", 3)
print(x)