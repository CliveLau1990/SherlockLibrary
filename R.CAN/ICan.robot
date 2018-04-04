*** Settings ***
Library           TBoxLibrary

*** Keywords ***
设置左前门状态
    [Arguments]    ${status}
    [Documentation]    设置左前门状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 打开左前门 |
    ...    | 设置左前门状态 | Open |
    ...    | Comment | 关闭左前门 |
    ...    | 设置左前门状态 | Close |
    Request Can Config    LEFT_FRONT_DOOR_STS    ${status}

获取左前门状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取左前门状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Open |
    ...    | 获取左前门状态 | expected=On |
    ...    | Comment | CAN: Close |
    ...    | 获取左前门状态 | expected=Off |
    ${retval}    Request Can Data    LEFT_FRONT_DOOR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置右前门状态
    [Arguments]    ${status}
    [Documentation]    设置右前门状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 打开右前门 |
    ...    | 设置右前门状态 | Open |
    ...    | Comment | 关闭右前门 |
    ...    | 设置右前门状态 | Close |
    Request Can Config    RIGHT_FRONT_DOOR_STS    ${status}

获取右前门状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取右前门状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Open |
    ...    | 获取右前门状态 | expected=On |
    ...    | Comment | CAN: Close |
    ...    | 获取右前门状态 | expected=Off |
    ${retval}    Request Can Data    RIGHT_FRONT_DOOR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置左后门状态
    [Arguments]    ${status}
    [Documentation]    设置左后门状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 打开左后门 |
    ...    | 设置左后门状态 | Open |
    ...    | Comment | 关闭左后门 |
    ...    | 设置左后门状态 | Close |
    Request Can Config    LEFT_REAR_DOOR_STS    ${status}

获取左后门状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取左后门状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Open |
    ...    | 获取左后门状态 | expected=On |
    ...    | Comment | CAN: Close |
    ...    | 获取左后门状态 | expected=Off |
    ${retval}    Request Can Data    LEFT_REAR_DOOR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置右后门状态
    [Arguments]    ${status}
    [Documentation]    设置右后门状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 打开右后门 |
    ...    | 设置右后门状态 | Open |
    ...    | Comment | 关闭右后门 |
    ...    | 设置右后门状态 | Close |
    Request Can Config    RIGHT_REAR_DOOR_STS    ${status}

获取右后门状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取右后门状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Open |
    ...    | 获取右后门状态 | expected=On |
    ...    | Comment | CAN: Close |
    ...    | 获取右后门状态 | expected=Off |
    ${retval}    Request Can Data    RIGHT_REAR_DOOR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置后备箱状态
    [Arguments]    ${status}
    [Documentation]    设置后备箱状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 打开后备箱 |
    ...    | 设置后备箱状态 | Open |
    ...    | Comment | 关闭后备箱 |
    ...    | 设置后备箱状态 | Close |
    Request Can Config    TRUNK_DOOR_STS    ${status}

获取后备箱状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取后备箱状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Open |
    ...    | 获取后备箱状态 | expected=On |
    ...    | Comment | CAN: Close |
    ...    | 获取后备箱状态 | expected=Off |
    ${retval}    Request Can Data    TRUNK_DOOR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置门锁状态
    [Arguments]    ${status}
    [Documentation]    设置门锁状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 默认状态 |
    ...    | 设置门锁状态 | Default |
    ...    | Comment | 解锁 |
    ...    | 设置门锁状态 | Unlock |
    ...    | Comment | 上锁 |
    ...    | 设置门锁状态 | Locked |
    ...    | Comment | 错误状态 |
    ...    | 设置门锁状态 | Error |
    ...    | Comment | 无效状态 |
    ...    | 设置门锁状态 | Invalid |
    ...    | Comment | 无效值 |
    ...    | 设置门锁状态 | InvalidValue1 |
    ...    | Comment | 无效值 |
    ...    | 设置门锁状态 | InvalidValue2 |
    ...    | Comment | 初始化值 |
    ...    | 设置门锁状态 | InitialValue |
    Request Can Config    DOOR_LOCK_STS    ${status}

获取门锁状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取门锁状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Default/Unlock/InitialValue|
    ...    | 获取门锁状态 | expected=Off |
    ...    | Comment | CAN: Locked|
    ...    | 获取门锁状态 | expected=On |
    ...    | Comment | CAN: Error/Invalid/InvalidValue1/InvalidValue2 |
    ...    | 获取门锁状态 | expected=Unknown |
    ${retval}    Request Can Data    DOOR_LOCK_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置手刹状态
    [Arguments]    ${status}
    [Documentation]    设置手刹状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | Invalid |
    ...    | 设置手刹状态 | Invalid |
    ...    | Comment | 拉起手刹 |
    ...    | 设置手刹状态 | Up |
    ...    | Comment | 放下手刹 |
    ...    | 设置手刹状态 | Down |
    ...    | Comment | Reserved |
    ...    | 设置手刹状态 | Reserved |
    Request Can Config    HANDBRAKE_STS    ${status}

获取手刹状态
    [Arguments]    ${expected}=Up
    [Documentation]    获取手刹状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Invalid |
    ...    | 获取手刹状态 | expected=Unknown |
    ...    | Comment | CAN: Up |
    ...    | 获取手刹状态 | expected=On |
    ...    | Comment | CAN: Down |
    ...    | 获取手刹状态 | expected=Off |
    ...    | Comment | CAN: Reserved |
    ...    | 获取手刹状态 | expected=Unknown |
    ${retval}    Request Can Data    HANDBRAKE_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置空调状态
    [Arguments]    ${status}
    [Documentation]    设置空调状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 开启空调 |
    ...    | 设置空调状态 | On |
    ...    | Comment | 关闭空调 |
    ...    | 设置空调状态 | Off |
    Request Can Config    AC_STS    ${status}

获取空调状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取空调状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: On |
    ...    | 获取空调状态 | expected=On |
    ...    | Comment | CAN: Off |
    ...    | 获取空调状态 | expected=Off |
    ${retval}    Request Can Data    AC_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置前除霜状态
    [Arguments]    ${status}
    [Documentation]    设置前除霜状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 开启前除霜 |
    ...    | 设置前除霜状态 | On |
    ...    | Comment | 关闭前除霜 |
    ...    | 设置前除霜状态 | Off |
    Request Can Config    FRONT_DEFROST_STS    ${status}

获取前除霜状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取前除霜状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: On |
    ...    | 获取前除霜状态 | expected=On |
    ...    | Comment | CAN: Off |
    ...    | 获取前除霜状态 | expected=Off |
    ${retval}    Request Can Data    FRONT_DEFROST_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置后除霜状态
    [Arguments]    ${status}
    [Documentation]    设置后除霜状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | 开启后除霜 |
    ...    | 设置后除霜状态 | On |
    ...    | Comment | 关闭后除霜 |
    ...    | 设置后除霜状态 | Off |
    Request Can Config    REAR_DEFROST_STS    ${status}

获取后除霜状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取后除霜状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: On |
    ...    | 获取后除霜状态 | expected=On |
    ...    | Comment | CAN:Off |
    ...    | 获取后除霜状态 | expected=Off |
    ${retval}    Request Can Data    REAR_DEFROST_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置空调温度
    [Arguments]    ${status}
    [Documentation]    设置空调温度
    ...
    ...    <temperature>: 温度
    ...
    ...    Example(for CAN):
    ...    | Comment | 设置空调温度 |
    ...    | 设置空调温度 | 25.5 |
    Request Can Config    AC_TEMPERATURE    ${status}

获取空调温度
    [Arguments]    ${expected}=25.5
    [Documentation]    获取空调温度
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | 获取空调温度 | expected=25.5 |
    ${retval}    Request Can Data    AC_TEMPERATURE
    Should Be Equal As Strings    ${retval}    ${expected}

设置发动机状态
    [Arguments]    ${status}
    [Documentation]    设置发动机状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | Off档位 |
    ...    | 设置发动机状态 | KeyOff |
    ...    | Comment | On档位 |
    ...    | 设置发动机状态 | KeyOn |
    ...    | Comment | 点火中 |
    ...    | 设置发动机状态 | Cranking |
    ...    | Comment | 运行中 |
    ...    | 设置发动机状态 | Running |
    Request Can Config    ENGINE_STS    ${status}
    Run Keyword If    '${status}' == 'Cranking'    设置PEPS状态    Start
    ...    ELSE    设置PEPS状态    On

获取发动机状态
    [Arguments]    ${expected}=KeyOff
    [Documentation]    获取发动机状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: KeyOff |
    ...    | 获取发动机状态 | expected=KeyOff |
    ...    | Comment | CAN: KeyOn |
    ...    | 获取发动机状态 | expected=KeyOn |
    ...    | Comment | CAN: Cranking |
    ...    | 获取发动机状态 | expected=Cranking |
    ...    | Comment | CAN: Running |
    ...    | 获取发动机状态 | expected=Running |
    ${retval}    Request Can Data    ENGINE_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置雨刷状态
    [Arguments]    ${status}
    [Documentation]    设置雨刷状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | Stop档位 |
    ...    | 设置雨刷状态 | Stop |
    ...    | Comment | LowSpeed档位 |
    ...    | 设置雨刷状态 | LowSpeed |
    ...    | Comment | HighSpeed档位 |
    ...    | 设置雨刷状态 | HighSpeed |
    ...    | Comment | Interrupt档位 |
    ...    | 设置雨刷状态 | Interrupt |
    ...    | Comment | Wash档位 |
    ...    | 设置雨刷状态 | Wash |
    ...    | Comment | Reserved |
    ...    | 设置雨刷状态 | Reserved |
    ...    | Comment | SwitchFailure |
    ...    | 设置雨刷状态 | SwitchFailure |
    ...    | Comment | Invalid |
    ...    | 设置雨刷状态 | Invalid |
    Request Can Config    WIPER_STS    ${status}

获取雨刷状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取雨刷状态
    ...
    ...    [expected] 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: Stop/SwitchFailure |
    ...    | 获取雨刷状态 | expected=Off |
    ...    | Comment | CAN: LowSpeed/HighSpeed/Wash |
    ...    | 获取雨刷状态 | expected=On |
    ...    | Comment | CAN: Interrupt/Reserved/Invalid |
    ...    | 获取雨刷状态 | expected=Unknown |
    ${retval}    Request Can Data    WIPER_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置变速箱状态
    [Arguments]    ${status}
    [Documentation]    设置变速箱状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(for CAN):
    ...    | Comment | P档位 |
    ...    | 设置变速箱状态 | P |
    ...    | Comment | R档位 |
    ...    | 设置变速箱状态 | R |
    ...    | Comment | N档位 |
    ...    | 设置变速箱状态 | N |
    ...    | Comment | D档位 |
    ...    | 设置变速箱状态 | D |
    ...    | Comment | 手动1档位 |
    ...    | 设置变速箱状态 | ManualGear1 |
    ...    | Comment | 手动2档位 |
    ...    | 设置变速箱状态 | ManualGear2 |
    ...    | Comment | 手动3档位 |
    ...    | 设置变速箱状态 | ManualGear3 |
    ...    | Comment | 手动4档位 |
    ...    | 设置变速箱状态 | ManualGear4 |
    ...    | Comment | 手动5档位 |
    ...    | 设置变速箱状态 | ManualGear5 |
    ...    | Comment | 手动6档位 |
    ...    | 设置变速箱状态 | ManualGear6 |
    ...    | Comment | S档位 |
    ...    | 设置变速箱状态 | S |
    ...    | Comment | Unknown |
    ...    | 设置变速箱状态 | Unknown |
    ...    | Comment | Z1档位 |
    ...    | 设置变速箱状态 | Z1 |
    ...    | Comment | Z2档位 |
    ...    | 设置变速箱状态 | Z2 |
    ...    | Comment | Z3档位 |
    ...    | 设置变速箱状态 | Z3 |
    ...    | Comment | Invalid |
    ...    | 设置变速箱状态 | Invalid |
    Request Can Config    GEAR_STS    ${status}

获取变速箱状态
    [Arguments]    ${expected}=Unknown
    [Documentation]    获取变速箱状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN: P |
    ...    | 获取变速箱状态 | expected=P |
    ...    | Comment | CAN: R |
    ...    | 获取变速箱状态 | expected=R |
    ...    | Comment | CAN: N |
    ...    | 获取变速箱状态 | expected=N |
    ...    | Comment | CAN: D |
    ...    | 获取变速箱状态 | expected=D |
    ...    | Comment | CAN: Manual1 |
    ...    | 获取变速箱状态 | expected=Manual1 |
    ...    | Comment | CAN: Manual2 |
    ...    | 获取变速箱状态 | expected=Manual2 |
    ...    | Comment | CAN: Manual3 |
    ...    | 获取变速箱状态 | expected=Manual3 |
    ...    | Comment | CAN: Manual4 |
    ...    | 获取变速箱状态 | expected=Manual4 |
    ...    | Comment | CAN: Manual5 |
    ...    | 获取变速箱状态 | expected=Manual5 |
    ...    | Comment | CAN: Manual6 |
    ...    | 获取变速箱状态 | expected=Manual6 |
    ...    | Comment | CAN: S |
    ...    | 获取变速箱状态 | expected=S |
    ...    | Comment | CAN: Unknown |
    ...    | 获取变速箱状态 | expected=Unknown |
    ...    | Comment | CAN: Z1 |
    ...    | 获取变速箱状态 | expected=Z1 |
    ...    | Comment | CAN: Z2 |
    ...    | 获取变速箱状态 | expected=Z2 |
    ...    | Comment | CAN: Z3 |
    ...    | 获取变速箱状态 | expected=Z3 |
    ...    | Comment | CAN: Invalid |
    ...    | 获取变速箱状态 | expected=Invalid |
    ${retval}    Request Can Data    GEAR_STS
    Should Be Equal As Strings    ${retval}    ${expected}

设置PEPS状态
    [Arguments]    ${status}
    [Documentation]    设置PEPS状态
    ...
    ...    <status>: 状态
    ...
    ...    Example(For CAN):
    ...    | Comment | Default |
    ...    | 设置PEPS状态 | Default |
    ...    | Comment | Off |
    ...    | 设置PEPS状态 | Off |
    ...    | Comment | Acc |
    ...    | 设置PEPS状态 | Acc |
    ...    | Comment | On |
    ...    | 设置PEPS状态 | On |
    ...    | Comment | Start |
    ...    | 设置PEPS状态 | Start |
    ...    | Comment | InvalidValue1 |
    ...    | 设置PEPS状态 | InvalidValue1 |
    ...    | Comment | InvalidValue2 |
    ...    | 设置PEPS状态 | InvalidValue2 |
    ...    | Comment | Invalid |
    ...    | 设置PEPS状态 | Invalid |
    Request Can Config    PEPS_STS    ${status}

获取PEPS状态
    [Arguments]    ${expected}=Default
    [Documentation]    获取PEPS状态
    ...
    ...    [expected]: 期望返回值
    ...
    ...    Example(for TSP):
    ...    | Comment | CAN:Default |
    ...    | 获取PEPS状态 | expected=Default |
    ...    | Comment | CAN:Off |
    ...    | 获取PEPS状态 | expected=Off |
    ...    | Comment | CAN:Acc |
    ...    | 获取PEPS状态 | expected=Acc |
    ...    | Comment | CAN:On |
    ...    | 获取PEPS状态 | expected=On |
    ...    | Comment | CAN:Start |
    ...    | 获取PEPS状态 | expected=Start |
    ...    | Comment | CAN:InvalidValue1/InvalidValue2/Invalid |
    ...    | 获取PEPS状态 | expected=Invalid |
    ${retval}    Request Can Data    PEPS_STS
    Should Be Equal As Strings    ${retval}    ${expected}
