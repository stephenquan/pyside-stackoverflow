import QtQuick 2.0
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15
import QtQuick.Window 2.1

ApplicationWindow {
    id: main
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("GridView1")
                onClicked: stack.push(grid_1)
            }
            ToolButton {
                text: qsTr("GridView2")
                onClicked: stack.push(grid_2)
            }
        }
    }

    StackView {
        id: stack
        initialItem: grid_1
        anchors.fill: parent
    }

    Component {
        id: grid_1

        GridLayout {
            id: grid
            columns: 3
            columnSpacing: 0

            Rectangle {
                id: red_1
                Layout.preferredWidth: 100
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "red"
                border.color: "black"
                border.width: 5
                radius: 10

                Text {
                    text: grid.width
                    anchors.centerIn: red_1
                }
            }

            Rectangle {
                id: red_2
                Layout.preferredWidth: 200
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height/2
                color: "red"
                border.color: "green"
                border.width: 5
                radius: 10

                Text {
                    text: red_2.width
                    anchors.centerIn: red_2
                }
            }

            Rectangle {
                id: red_3
                Layout.preferredWidth: 200
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "red"
                border.color: "blue"
                border.width: 5
                radius: 10

                Text {
                    text: red_3.width
                    anchors.centerIn: red_3
                }
            }
        }
    }

    Component {
        id: grid_2

        Rectangle {
            width: 100
            height: 100
            color: "green"
            border.color: "black"
            border.width: 5
            radius: 10
        }
    }
}
