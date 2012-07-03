import QtQuick 1.1
import com.nokia.symbian 1.1

Page {
    id: settingsPage

    Column {
        id: column
        anchors.fill: parent

        Text {
            id: userNameLabel
            text: qsTr("User name")

            font.family: platformStyle.fontFamilyRegular
            font.pixelSize: platformStyle.fontSizeMedium
            color: platformStyle.colorNormalLight
        }

        TextField {
            id: userNameInput
            width: parent.width
            height: 50
            text: ""
        }

        Text {
            id: passwordLabel
            text: qsTr("Password")

            font.family: platformStyle.fontFamilyRegular
            font.pixelSize: platformStyle.fontSizeMedium
            color: platformStyle.colorNormalLight
        }

        TextField {
            id: passwordInput
            width: parent.width
            height: 50
            text: ""
        }
    }


}
