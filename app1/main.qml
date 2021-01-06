import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    color: "yellow"
    title: qsTr("Login")
    Rectangle{
        id: rect1
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        border.width: 8
        border.color: "blue"
        radius: 50
    }

    Text{
        color: "white"
        text: "Exit"
        visible:true
        font.family: "Times New Roman"
        font.bold: true
        font.pointSize: 20
        anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: rect1
        hoverEnabled: true
        onEntered: {
            rect1.color = "green"
        }
        onExited:{
            rect1.color = "red"
        }
        onClicked: {
            Qt.quit();
        }
    }
}
