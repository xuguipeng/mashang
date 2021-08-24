*** Settings ***
Library           Collections
Resource          业务关键字.txt

*** Test Cases ***
case1
    Comment    1.打印
    LOG    测试打印
    Comment    2.设置变量
    ${name}    Set Variable    张三
    log    ${name}
    Comment    3.获取时间
    ${time}    Get Time
    log    ${time}
    Comment    4.字符串拼接
    ${str}    Catenate    字符串1    字符串2
    log    ${str}
    comment    5.睡眠
    sleep    1
    Comment    6.创建列表
    ${list}    create list    功能    自动化    性能
    log    ${list}
    @{list2}    create list    功能    自动化    性能
    log many    @{list2}
    ${dic}    Create Dictionary    name=百里    age=13
    log    ${dic}
    ${key}    Get Dictionary Keys    ${dic}
    log    ${key}
    ${values}    Get Dictionary Values    ${dic}
    log    ${values}
    ${key_value}    Get From Dictionary    ${dic}    name
    log    ${key_value}
    Comment    8.python中的方法
    ${random}    Evaluate    random.randint(1,101)    modules=random
    log    ${random}
    ${time}    Evaluate    time.time()    modules=time
    log    9.执行自定义的方法
    Comment    import library    ./test.py
    Comment    ${sum}    sum    10    20
    Comment    10.流程控制if
    ${age}    Set Variable    30
    Run Keyword If    ${age}>30    log    年龄超过了
    ...    ELSE IF    18<=${age}<=30    abc
    ...    ELSE    log     未成年
    Comment    11.流程控制for
    FOR    ${a}    IN    张三    李四
    LOG    ${a}
    END
    @{list3}    Create List    张三     李四    王五
    FOR     ${B}    IN    @{list3}
    log    ${B}
    END
    FOR     ${c}    IN RANGE     1    10
    Run Keyword If    ${c}==5    Exit For Loop
    log    ${c}
    END

case2

case3
