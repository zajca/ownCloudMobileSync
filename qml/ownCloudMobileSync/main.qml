import QtQuick 1.1
import com.nokia.symbian 1.1

PageStackWindow {
    id: window
    initialPage: MainPage {tools: toolBarLayout}
    showStatusBar: true
    showToolBar: true

    StatusBar {
        id: statusbar
    }

    ToolBarLayout {
        id: toolBarLayout
        ToolButton {
            flat: true
            iconSource: "toolbar-back"
            onClicked: window.pageStack.depth <= 1 ? Qt.quit() : window.pageStack.pop()
        }
    }

}
