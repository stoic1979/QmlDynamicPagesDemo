import QtQuick 2.7
import QtQuick.Window 2.2

Rectangle {

    id: root

    visible: true
    width: 800
    height: 480

    signal message(string page)

    Rectangle {
        id: topBar
        color: "orange"
        width: parent.width
        height: 80
        y: 200

        Button {
            text: "HOME"
            width: 100
            height: 60
            x: 510
            y: 10

            onClicked: {
                root.message("Home.qml")
            }
        }
    }

    Text {
        text: "Calendar Page"
        anchors.centerIn:  root
    }

}//root
