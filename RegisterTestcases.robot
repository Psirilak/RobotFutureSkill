*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/registerKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}  chrome


*** Test Cases ***

As a user, I want to register success with valid credential
    when user register to future skill platform with    ${email}     ${firstName}     ${lastName}     ${phonnumber}     ${newpassword}     ${confirmpassword}
    sleep   3s
    future skill should display page to enter OTP and display message as"ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"