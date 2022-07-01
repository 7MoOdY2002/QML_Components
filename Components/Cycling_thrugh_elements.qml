import QtQuick

//mport "myComponents" as MyComponent
Window {
    property var statesColors: [autoRect, firstRect, secondRect, thirdRect]
    property var index: 0
    property var boxWidth: 50
    property var boxHeight: 45
    property var penSize: 10
    Component.onCompleted: function () {
        statesColors[index].color = "green"
        console.log(statesColors[index].focus)
    }

    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        x: 500
        y: 500
        width: 100
        height: 100
        color: "red"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("sa imi bag pula")
            }
        }
    }

    Rectangle {
        width: 200
        height: 200
        x: 25
        y: 25
        color: "black"

        Rectangle {

            color: "white"
            width: boxWidth
            height: boxHeight
            radius: 10

            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 10
            }
            Rectangle {
                // color: activeFocus ? "green" : "red"
                color: "red"
                // focus: true
                id: autoRect
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {
                    text: "AUTO"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
        Rectangle {

            color: "white"
            width: boxWidth
            height: boxHeight
            radius: 10
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 10
            }
            Rectangle {
                id: firstRect
                // color: activeFocus ? "green" : "red"
                color: "red"
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {
                    text: "1"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
        Rectangle {

            color: "white"
            width: boxWidth
            height: boxHeight
            radius: 10
            anchors {
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: 15
            }
            Rectangle {
                id: secondRect
                // color: activeFocus ? "green" : "red"
                color: "red"
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {
                    text: "2"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
        Rectangle {
            color: "white"
            width: boxWidth
            height: boxHeight
            radius: 10
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 10
            }
            Rectangle {
                id: thirdRect
                //color: activeFocus ? "green" : "red"
                color: "red"
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {

                    text: "3"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }

        Rectangle {
            id: nextButton
            color: "WHITE"
            width: boxWidth
            height: boxHeight
            radius: 10
            anchors {
                bottom: parent.bottom
                right: parent.right
                rightMargin: 10
                bottomMargin: 5
            }
            Rectangle {
                color: "black"
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {

                    text: "NEXT"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("NEXT")
                    statesColors[index].color = "red"
                    index++
                    if (index == 4)
                        index = 0
                    statesColors[index].color = "green"
                }
            }
        }

        Rectangle {

            id: prevbutton
            color: "WHITE"
            width: boxWidth
            height: boxHeight
            radius: 10
            anchors {
                bottom: parent.bottom
                left: parent.left
                leftMargin: 10
                bottomMargin: 5
            }
            Rectangle {
                color: "black"
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                Text {
                    text: "PREV"
                    font.bold: true
                    font.pointSize: penSize
                    color: "white"
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("PREV")
                    statesColors[index].color = "red"
                    index--
                    if (index == -1)
                        index = 3
                    statesColors[index].color = "green"
                }
            }
        }
    } // dreptunghi principal
}
