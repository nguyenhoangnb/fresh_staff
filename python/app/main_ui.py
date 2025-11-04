# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'main.ui'
#
# Created by: PyQt5 UI code generator 5.14.1
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.state_button = QtWidgets.QPushButton(self.centralwidget)
        self.state_button.setGeometry(QtCore.QRect(370, 360, 111, 31))
        self.state_button.setObjectName("state_button")
        self.lcd_datetime = QtWidgets.QLCDNumber(self.centralwidget)
        self.lcd_datetime.setGeometry(QtCore.QRect(510, 80, 271, 61))
        self.lcd_datetime.setStyleSheet("background-color: rgb(115, 210, 22);\n"
"font: 5pt \"Ubuntu\";")
        self.lcd_datetime.setDigitCount(10)
        self.lcd_datetime.setObjectName("lcd_datetime")
        self.lbl_datatime = QtWidgets.QLabel(self.centralwidget)
        self.lbl_datatime.setGeometry(QtCore.QRect(450, 36, 131, 31))
        self.lbl_datatime.setStyleSheet("background-color: rgb(252, 233, 79)")
        self.lbl_datatime.setObjectName("lbl_datatime")
        self.lbl_state_button = QtWidgets.QLabel(self.centralwidget)
        self.lbl_state_button.setGeometry(QtCore.QRect(370, 300, 171, 31))
        self.lbl_state_button.setStyleSheet("background-color: rgb(252, 233, 79)")
        self.lbl_state_button.setObjectName("lbl_state_button")
        self.data_from_app = QtWidgets.QLabel(self.centralwidget)
        self.data_from_app.setGeometry(QtCore.QRect(50, 80, 341, 51))
        self.data_from_app.setStyleSheet("background-color: rgb(114, 159, 207)")
        self.data_from_app.setObjectName("data_from_app")
        self.data_to_app = QtWidgets.QLabel(self.centralwidget)
        self.data_to_app.setGeometry(QtCore.QRect(50, 160, 341, 51))
        self.data_to_app.setStyleSheet("background-color: rgb(138, 226, 52)")
        self.data_to_app.setObjectName("data_to_app")
        self.btn_exit = QtWidgets.QPushButton(self.centralwidget)
        self.btn_exit.setGeometry(QtCore.QRect(680, 20, 89, 25))
        self.btn_exit.setStyleSheet("background-color: rgb(239, 41, 41);")
        self.btn_exit.setObjectName("btn_exit")
        self.lbl_date = QtWidgets.QLabel(self.centralwidget)
        self.lbl_date.setGeometry(QtCore.QRect(450, 160, 131, 31))
        self.lbl_date.setStyleSheet("background-color: rgb(252, 233, 79)")
        self.lbl_date.setObjectName("lbl_date")
        self.lcd_date = QtWidgets.QLCDNumber(self.centralwidget)
        self.lcd_date.setGeometry(QtCore.QRect(510, 200, 271, 61))
        self.lcd_date.setStyleSheet("background-color: rgb(115, 210, 22);\n"
"font: 5pt \"Ubuntu\";")
        self.lcd_date.setDigitCount(10)
        self.lcd_date.setObjectName("lcd_date")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.state_button.setText(_translate("MainWindow", "State"))
        self.lbl_datatime.setText(_translate("MainWindow", "Giờ"))
        self.lbl_state_button.setText(_translate("MainWindow", "Trạng thái nút nhấn: "))
        self.data_from_app.setText(_translate("MainWindow", "Data from app2"))
        self.data_to_app.setText(_translate("MainWindow", "Data to app2"))
        self.btn_exit.setText(_translate("MainWindow", "Exit"))
        self.lbl_date.setText(_translate("MainWindow", "Ngày, tháng, năm"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
