*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***

user register to future skill platform with 
    [Arguments]     ${email}     ${firstname}     ${lastname}     ${phonnumber}     ${password}     ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email              ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName          ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName           ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber        ${phonnumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword        ${newpassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword    ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     name=consent
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display page to enter OTP and display message as"${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}
