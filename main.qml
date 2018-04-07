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

        TextField {
            id: urlTextField
            Layout.preferredWidth: parent.width
            Keys.onReturnPressed: webView.url = text
        }

        WebView{
            id: webView
            Layout.preferredWidth: parent.width
            Layout.fillHeight: true
            url: urlTextField.text
        }
    }
}
