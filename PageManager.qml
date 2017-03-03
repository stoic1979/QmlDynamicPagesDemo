import QtQuick 2.7
import QtQuick.Window 2.2


//-------------------------------------------------------------
// Container page with loader to load qml pages dynamically
//-------------------------------------------------------------
Window {
    visible: true
    width: 800
    height: 480

    Loader {
        id: pageLoader
        anchors.fill: parent
    }

    Connections {
        target: pageLoader.item
        onMessage: {
            console.log("Loading page: " + page);
            pageLoader.source = page;
        }
    }

    Component.onCompleted: {
        // set default page to home page
        pageLoader.source = "Home.qml";
    }

}// Window
