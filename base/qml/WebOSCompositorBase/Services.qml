// Copyright (c) 2017-2018 LG Electronics, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

import QtQuick 2.4
import WebOSServices 1.0
import WebOSCompositorBase 1.0

import "../WebOSCompositor"

Item {
    id: root
    property Service mainService: mainServiceId
    property var views

    LunaServiceAPI {
       id: mainServiceId
       foregroundAppInfoMgr: foregroundAppInfoMgrId
    }

    ForegroundAppInfoMgr {
        id: foregroundAppInfoMgrId
        service: mainServiceId

        foregroundAppItem: [
            compositor.fullscreen,
            views.overlay.currentItem
        ]
    }
}
