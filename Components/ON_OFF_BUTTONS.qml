import QtQuick
//mport "myComponents" as MyComponent
Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("ON AND OFF")
    Rectangle {
        id:backgroundRectangle
        height: 250
        width: 500
        color: "black"
        Rectangle{
            id: leftButton
            Text {
                text:"OFF"
                font.bold: true
                font.pointSize: 35
                anchors.verticalCenter:parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: "white"
            }

            anchors{
                verticalCenter:parent.verticalCenter
                left:parent.left
                leftMargin:25
            }
            width:200
            height:175
            color: activeFocus ? "red" : "darkred"
            //KeyNavigation.right: righButton
            focus:true
            MouseArea {
                anchors.fill : parent
                onClicked: parent.forceActiveFocus()
        }
        }
        Rectangle{
            id:rightButton
            anchors{
                verticalCenter: parent.verticalCenter
                right:parent.right
                rightMargin:25
            }
            width:200
            height:175
            color: activeFocus ? "#00ff00" : "#008800"
            KeyNavigation.left: leftButton
            Text {
                text:"ON"
                font.bold: true
                font.pointSize: 35
                anchors.verticalCenter:parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: "white"
            }
            MouseArea {
                anchors.fill : parent
                onClicked: parent.forceActiveFocus()
        }
        }
    }
}

