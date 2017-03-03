import QtQuick 2.0

Rectangle {
    id: button

    signal clicked
    property alias imgSrc: img.source

    color: "#eeeeee"
    radius: 4
    border.color: "#999999"

    property alias text: txt.text

    Image {
        id: img
        anchors.centerIn: parent
    }

    Text {
        id: txt
        anchors.centerIn: parent
    }

    MouseArea {
        id: mouseArea
        enabled: button.enabled
        anchors.fill: button
        hoverEnabled: true

        onClicked: button.clicked()

        onPressed: {
            button.opacity = 0.5
        }

        onReleased: {
            button.opacity = 1.0
        }

    }

}//Rectangle
