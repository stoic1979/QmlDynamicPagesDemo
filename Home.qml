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

        Button {
            text: "Settings"
            width: 100
            height: 60
            x: 10
            y: 10

            onClicked: {
                console.log("Loading Settings")
                root.message("Settings.qml");
            }
        }//Settings

        Button {
            text: "Calendar"
            width: 100
            height: 60
            x: 690
            y: 10

            onClicked: {
                console.log("Loading Calendar")
                root.message("Calendar.qml");
            }
        }//Calander


    }//topBar

    Text {
        text: "Home Page"
        anchors.centerIn: root
    }


}//root
