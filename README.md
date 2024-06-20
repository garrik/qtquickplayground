# Prerequisites
QT6 is required.
The installation path of Qt must be known to cmake,
can be passed as param e.g.

```bash
# check Qt path and version
qmake -query QT_INSTALL_PREFIX
qmake -query QT_VERSION

cmake -DCMAKE_PREFIX_PATH="${HOME}/Qt/6.6.3/gcc_64" -S. -B${HOME}/develop/build/qtquickplayground
```

It seems that qtmqtt is not built and distributed with other Qt packages.
https://forum.qt.io/topic/142345/find-package-failed-for-mqtt-simple-application/2
https://stackoverflow.com/questions/68928310/build-specific-modules-in-qt6-i-e-qtmqtt/71984521?noredirect=1#comment132724929_71984521

## Build qtmqtt from source
```bash
# Clone the repository
git clone https://github.com/qt/qtmqtt.git

# Switch to the repository
cd qtmqtt

# Checkout the branch corresponding to the target kit
git checkout 6.6.3

# Create a directory to build the module cleanly
mkdir build && cd build

# Use the qt-configure-module tool 
~/Qt/6.6.3/gcc_64/bin/qt-configure-module ..

# Build it here
~/Qt/Tools/CMake/bin/cmake --build .
    [33/33] Creating library symlink lib/libQt6Mqtt.so.6 lib/libQt6Mqtt.so

# Install the module in the correct location 
~/Qt/Tools/CMake/bin/cmake --install . --verbose
    -- Install configuration: "RelWithDebInfo"
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/./metatypes/qt6mqtt_relwithdebinfo_metatypes.json
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttConfig.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttConfigVersion.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttConfigVersionImpl.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/libQt6Mqtt.so.6.6.3
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/libQt6Mqtt.so.6
    -- Set runtime path of "/home/perotto/Qt/6.6.3/gcc_64/lib/libQt6Mqtt.so.6.6.3" to "$ORIGIN"
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/libQt6Mqtt.so
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttTargets.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttTargets-relwithdebinfo.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttVersionlessTargets.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/Qt6Mqtt.debug
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/./modules/Mqtt.json
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttAdditionalTargetInfo.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttSubscription
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QtMqtt
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttTopicName
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttSubscriptionProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttClient
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttTopicFilter
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttConnectionProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttUnsubscriptionProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttPublishProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QtMqttVersion
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttMessageStatusProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttUserProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttMessage
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qtmqttversion.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttLastWillProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttAuthenticationProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttStringPair
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QMqttServerConnectionProperties
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qtmqttexports.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttauthenticationproperties.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttclient.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttconnectionproperties.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttglobal.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttmessage.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttpublishproperties.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttsubscription.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqttsubscriptionproperties.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqtttopicfilter.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqtttopicname.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/qmqtttype.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/QtMqttDepends
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttclient_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttconnection_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttconnectionproperties_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttcontrolpacket_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttmessage_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttpublishproperties_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/include/QtMqtt/6.6.3/QtMqtt/private/qmqttsubscription_p.h
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/mkspecs/modules/qt_lib_mqtt.pri
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/mkspecs/modules/qt_lib_mqtt_private.pri
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/pkgconfig/Qt6Mqtt.pc
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt/Qt6MqttDependencies.cmake
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6BuildInternals/StandaloneTests/QtMqttTestsConfig.cmake
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib
    -- Installing: /home/perotto/Qt/6.6.3/gcc_64/lib/libQt6Mqtt.prl
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib/pkgconfig
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6Mqtt
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6BuildInternals
    -- Up-to-date: /home/perotto/Qt/6.6.3/gcc_64/lib/cmake/Qt6BuildInternals/StandaloneTests
```

