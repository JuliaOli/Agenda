import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Window {
    visible: true
    width: 400
    height: 500

    Rectangle{

        id: master
        anchors.fill: parent
        color: "#8BC34A"
    }

    ColumnLayout{
        id: mm
        spacing: 20
        anchors.centerIn: master
        Image {
            id: phone
            source: "qrc:/../Contact_Book-512.png"
            Layout.preferredWidth : 512*0.2
            Layout.preferredHeight : 512*0.2
            Layout.alignment: Qt.AlignHCenter


        }
        Text {
            id: phoneS
            color: "#ffffff"
            text: qsTr("Contact Me")
            font.family: "Helvica"
            style: Text.Outline
            font.pixelSize:30
            Layout.alignment: Qt.AlignHCenter

        }

        Rectangle{
            id: mini
            Layout.preferredWidth : master.width*0.3
            Layout.preferredHeight : master.height*0.09
            Layout.alignment: Qt.AlignHCenter
            radius: 30
            color: "#AED581"
            border.color: "#000000"
            border.width: 3
            Text {
                id: name
                color: "#ffffff"
                text: qsTr("ADD")
                font.family: "Helvica"
                style: Text.Outline
                font.pixelSize:18
                anchors.centerIn: mini
            }
        }

        Rectangle{
            id: min
            Layout.preferredWidth : master.width*0.3
            Layout.preferredHeight : master.height*0.09
            Layout.alignment: Qt.AlignHCenter
            radius: 30
            color: "#AED581"
            border.color: "#000000"
            border.width: 3
            MouseArea{
                id: butao
                anchors.fill: min
                onClicked: {
                    min.color = "#558B2F"
                }
            }

            Text {
                id: name1
                color: "#ffffff"
                text: qsTr("CONTACTS")
                font.family: "Helvica"
                style: Text.Outline
                font.pixelSize:18

                anchors.centerIn: min


            }
        }

    }

}

