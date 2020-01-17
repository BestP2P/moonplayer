import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import MoonPlayer 1.0

Dialog {
    id: videoOptionsDialog
    
    property MpvObject mpvObject: null
    
    width: 400
    height: 300
    
    GridLayout {
        anchors.fill: parent
        columns: 3
        rowSpacing: 0
        
        // Title
        Label { text: qsTr("Video options"); font.pixelSize: 16; font.bold: true; Layout.columnSpan: 3 }
        
        // Brightness
        Label { text: qsTr("Brightness") }
        Slider {
            id: brightnessSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("brightness", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: brightnessSlider.value }
        
        // Contrast
        Label { text: qsTr("Contrast") }
        Slider {
            id: contrastSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("contrast", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: contrastSlider.value }
        
        // Saturation
        Label { text: qsTr("Saturation") }
        Slider {
            id: saturationSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("saturation", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: saturationSlider.value }
        
        // Gamma
        Label { text: qsTr("Gamma") }
        Slider {
            id: gammaSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("gamma", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: gammaSlider.value }
        
        // Hue
        Label { text: qsTr("Hue") }
        Slider {
            id: hueSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("hue", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: hueSlider.value }
    }
}
