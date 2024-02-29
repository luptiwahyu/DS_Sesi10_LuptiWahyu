const { Given, When, Then } = require('@wdio/cucumber-framework');
const LoginPage = require('../pageobjects/login.page.js');
const HomePage = require('../pageobjects/home.page.js');

Given(/^Lupti is on the login page$/, async () => {
    await LoginPage.open()
});

When(/^Lupti login with "(.*)" credential$/, async (username) => {
    await LoginPage.login(username)
});

Then(/^Lupti should see home page$/, async () => {
    await HomePage.validateHomePage()
});

Then(/^Lupti should see error "(.*)"$/, async (message) => {
    await LoginPage.validateLockedOutUserError(message)
});
