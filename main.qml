import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtWebView 1.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("My web Browser")

    ColumnLayout {
        anchors.fill: parent
        RowLayout{
            ToolButton{
                text: "<"
                onClicked: webView.goBack()
                enabled: webView.canGoBack
            }
            ToolButton{
                text: ">"
                onClicked: webView.goForward()
                enabled: webView.canGoForward
            }
            TextField {
                Layout.fillWidth: true
                Keys.onReturnPressed: webView.url = text
                focus: true
                text: webView.url
                BusyIndicator {
                    anchors {right: parent.right; verticalCenter: parent.verticalCenter}
                    running: webView.loading
                    z: 2
                }
            }
        }

        WebView{
            id: webView
            Layout.preferredWidth: parent.width
            Layout.fillHeight: true
        }
    }
}
