from main_ui import Ui_MainWindow
from PyQt5 import QtWidgets, QtCore
from PyQt5.QtCore import QDateTime, QTimer
import rospy
from std_msgs.msg import String
class App1(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.button_state = False
        self.state_button.clicked.connect(self.toggle_button)
        self.btn_exit.clicked.connect(self.close)

        rospy.init_node('app1_node', anonymous=True)
        self.pub = rospy.Publisher('dataapp2', String, queue_size=10)
        self.sub = rospy.Subscriber('dataapp1', String, self.callback)
        self.count = 0
        self.timer = QTimer(self)
        self.timer.timeout.connect(self.update_datetime)
        self.timer.start(1000)  # Cập nhật mỗi giây
        self.update_datetime()

    def callback(self, msg):
        data = msg.data
        self.data_from_app.setText(f"Data from app1: {data}")
    def toggle_button(self):
        self.button_state = not self.button_state
        status = "ON" if self.button_state else "OFF"
        self.lbl_state_button.setText(f"Trạng thái nút nhấn: {status}")
    def update_datetime(self):
        current_datetime = QDateTime.currentDateTime()
        datetime_str = current_datetime.toString("HH:mm:ss")
        print("Current DateTime:", datetime_str)
        self.lcd_datetime.display(datetime_str)
        date_str = current_datetime.toString("dd/MM/yyyy")
        self.lcd_date.display(date_str)
        self.count += 1
        self.data_to_app.setText(f"Data to app1: Nice to meet you from app1 #{self.count}")
        self.pub.publish(String(data=f"Nice to meet you from app1 #{self.count}"))
    def close(self):
        return super().close()

if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    window = App1()
    window.show()
    sys.exit(app.exec_())