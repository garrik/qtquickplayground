import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 400; height: 100
        color: "lightblue"

        LineEdit {
            id: lineEdit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 16
            width: 300; height: 50
        }

        Text {
            anchors.top: lineEdit.bottom
            anchors.topMargin: 12
            anchors.left: parent.left
            anchors.leftMargin: 16
            text: "<b>Summary:</b> " + lineEdit.text
        }

        Image {
            id: clearButton
            source: "../images/clear.svg"
            anchors {
                right: parent.right; rightMargin: 4
                verticalCenter: lineEdit.verticalCenter
            }
            opacity: lineEdit.text === "" ? 0.25 : 1.0
            MouseArea {
                // Notice how setting the text removes the links in the NewLineEdit!
                anchors.fill: parent
                onClicked: lineEdit.text = ""
            }
        }
    }
}
