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
        color: "green"
        width: parent.width
        height: 80
        y: 100

        Button {
            text: "HOME"
            width: 100
            height: 60
            x: 10
            y: 10

            onClicked: {
                // emit signal to tell loader to change page
                root.message("Home.qml")
            }
        }

        Button {
            text: "Calendar"
            width: 100
            height: 60
            x: 490
            y: 10

            onClicked: {
                console.log("Loading Calendar")
                root.message("Calendar.qml");
            }
        }//Calander
    }

    Text {
        text: "Settings Page"
        anchors.centerIn:  root
    }

}//root
