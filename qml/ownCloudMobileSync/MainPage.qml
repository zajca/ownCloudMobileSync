import QtQuick 1.1
import com.nokia.symbian 1.1

Page {
    id: mainPage

    ListModel {
        id: syncListModel
        ListElement {
            name: "Contacts"
            selected: true
        }
        ListElement {
            name: "Calendars"
            selected: true
        }
        ListElement {
            name: "Mail"
            selected: true
        }
        ListElement {
            name: "Songs"
            selected: true
        }
        ListElement {
            name: "Videos"
            selected: true
        }
    }

    ListView {
        id: listView
        anchors.fill: parent

        focus: true
        clip: true

        model: syncListModel
        delegate: listDelegate
     }

    Component {
        id: listDelegate

        ListItem {
            id: listItem


            onClicked: {
                syncListModel.set(index, { "selected": checkbox.checked })
                //checkbox.checked = (checkbox.checked == true) ?  false : true
            }

            // The texts to display
                 Column {
                     anchors {
                         left:  listItem.paddingItem.left
                         top: listItem.paddingItem.top
                         bottom: listItem.paddingItem.bottom
                         right: checkbox.left
                     }

                     ListItemText {
                         mode: listItem.mode
                         role: "Title"
                         text: name // Title text is from the 'name' property in the model item (ListElement)
                         width: parent.width
                     }
                 }

                 // The checkbox to display
                 CheckBox {
                     id: checkbox
                     checked: selected  // Checked state is from the 'selected' property in the model item
                     anchors { right: listItem.paddingItem.right; verticalCenter: listItem.verticalCenter }
                     //onClicked: syncListModel.set(index, { "selected": checkbox.checked })
                 }
             }
    }
}
