import QtQuick

// Uncomment the following to make it work with qml tool
//import "../components"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 400; height: 100
        color: "lightblue"

        LineEdit {
            anchors.centerIn: parent
            width: 300; height: 50
        }
    }
}
