import QtQuick

Rectangle {
    property alias text: textInput.text

    border.color: "orange"
    color: "white"
    radius: 4; smooth: true
    clip: true

    TextInput {
        id: textInput
        anchors.fill: parent
        anchors.margins: 2
        text: "Enter text..."
        color: focus ? "black" : "gray"
        font.pixelSize: parent.height - 4
    }
}