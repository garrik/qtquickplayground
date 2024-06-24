import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Quick Playground")

    RedRect {
        anchors.left: parent.left
        anchors.top: parent.top
    }
    GreenRect {
        anchors.right: parent.right
        anchors.top: parent.top
    }
}
