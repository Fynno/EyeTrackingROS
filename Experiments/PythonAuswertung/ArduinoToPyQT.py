# Import libraries
from numpy import *
from pyqtgraph.Qt import QtGui, QtCore
import pyqtgraph as pg
import serial
from time import time

# Create object serial port
portName = '/dev/ttyACM0'                      # replace this port name by yours!
baudrate = 9600
ser = serial.Serial(portName,baudrate)
file1 = open('HeadDataIntegral.txt','w')

s = ''
### START QtApp #####
app = QtGui.QApplication([])            # you MUST do this once (initialize things)
####################

win = pg.GraphicsWindow(title="Signal from serial port") # creates a window
p = win.addPlot(title="Realtime plot")  # creates empty space for the plot in the window
curve = p.plot()                        # create an empty "plot" (a curve to plot)

windowWidth = 500                       # width of the window displaying the curve
Xm = linspace(0,0,windowWidth)          # create array that will contain the relevant time series
ptr = -windowWidth                      # set first x position

# Realtime data plot. Each time this function is called, the data display is updated
def update():
    global curve, ptr, Xm
    Xm[:-1] = Xm[1:]                      # shift data in the temporal mean 1 sample left
    value = ser.readline(8)                # read line (single value) from the serial port
    data = s.join(value)
    Xm[-1] = float(data)                 # vector containing the instantaneous values
    file1.write(str(time())+','+data)
    ptr += 1                              # update x position for displaying the curve
    curve.setData(Xm)                     # set the curve with this data
    curve.setPos(ptr,0)                   # set x position in the graph to 0
    QtGui.QApplication.processEvents()    # you MUST process the plot now

### MAIN PROGRAM #####
# this is a brutal infinite loop calling your realtime data plot

while True:
        update()
### END QtApp ####
pg.QtGui.QApplication.exec_() # you MUST put this at the end
##################
