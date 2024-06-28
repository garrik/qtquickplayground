import QtQuick

Rectangle {
    border.color: "green"
    color: "white"
    radius: 4; smooth: true
    clip: true

    TextInput {
        anchors.fill: parent
        anchors.margins: 2
        text: "Enter text..."
        color: focus ? "black" : "gray"
        font.pixelSize: parent.height - 4
    }
}
