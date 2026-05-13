module Locators
    class Login
        USERNAME = {id: 'username'}
        PASSWORD = {id: 'password'}
        LOGIN_BUTTON = {css: 'button[type="submit"]'}
        SECURE_AREA_HEADER = {xpath: '//h2[contains(text(), "Secure Area")]'}
        PASSWORD_ERROR = {xpath: '//div[contains(text(), "Your password is invalid!")]'}
        USERNAME_ERROR = {xpath: '//div[contains(text(), "Your username is invalid!")]'}
        LOGOUT_BUTTON = {xpath: '//a[contains(@class, "button")]'}
    end
end