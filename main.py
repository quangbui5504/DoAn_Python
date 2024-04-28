import sys
from PyQt5 import QtWidgets, uic
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox
import mysql.connector as con

import giaodien
from giaodien import Ui_MainWindow

global db
db = con.connect(host="localhost", user="root",password="", db="python")


class Login(QMainWindow):
    def __init__(self):
        super(Login, self).__init__()
        uic.loadUi("login.ui", self)
        self.pushButton.clicked.connect(self.loginfunction)
        self.pushButton_2.clicked.connect(self.thoatfunction)

    def loginfunction(self):
        try:
            magv = self.lineEdit.text()
            mk = self.lineEdit_2.text()
            cursor = db.cursor()
            query = "SELECT magv,tengiangvien,email,SoDienThoai,CASE gioitinh WHEN 0 THEN 'Nam' ELSE 'Nữ' END AS gioitinh,TENKHOA,quyen FROM user,khoa WHERE khoa.makhoa = user.makhoa and magv = %s AND matkhau = %s"
            values = (int(magv), mk)
            cursor.execute(query, values)
            result = cursor.fetchone()
            if result:
                QMessageBox.information(self, "Login", "Login Success")
                widget.setCurrentIndex(1)

                mainForm.ui.magvtext.setText(str(result[0]))
                mainForm.ui.tengvtext.setText(str(result[1]))
                mainForm.ui.emailtext.setText(str(result[2]))
                mainForm.ui.sdttext.setText(str(result[3]))
                mainForm.ui.gioitinhcbbox.setCurrentText(str(result[4]))
                mainForm.ui.khoacbbox.setCurrentText(str(result[5]))
                if(str(result[6]) == "giaovien"):
                    mainForm.ui.dstaikhoanbtn.setEnabled(False)
            else:
                QMessageBox.information(self, "Login", "Login Failed")
                self.lineEdit.setText("")
                self.lineEdit_2.setText("")

        except Exception as error:
            print('Lỗi:', error)

    def thoatfunction(self):
        QApplication.quit()


class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)



app = QApplication(sys.argv)
widget = QtWidgets.QStackedWidget()
loginForm = Login()
mainForm = MainWindow()
widget.addWidget(loginForm)
widget.addWidget(mainForm)
widget.setCurrentIndex(0)
widget.setFixedHeight(720)
widget.setFixedWidth(1080)
widget.show()
sys.exit(app.exec_())