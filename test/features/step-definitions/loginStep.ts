import { Given, When, Then } from '@cucumber/cucumber';
import login from '../pageobjects/Authentications/login';

const Login = login;


Given('I send login url', async () => {
    await browser.url('http://v3-web-app-micro.staging.superapp.co.id/auth/login');
    await browser.maximizeWindow();
    //screenshoot opened login page
    await browser.takeScreenshot();

});

When('I login with credential', async() => {
    
    let btnlog = false;
        let maxAttempts = 3;

        do {
            try {
                await Login.loginWithGoogleButton.click();
                btnlog = true;
                //await this.takeScreenshot('Clicked Login with Google');
            } catch (e) {
                const error = e as Error; 
                console.error('Error clicking button:', error.message);

                await new Promise(resolve => setTimeout(resolve, 1500)); 

                maxAttempts--;
                if (maxAttempts === 0) {
                    console.error('Maximum attempts reached. Reloading the page.');
                    await browser.refresh();
                    maxAttempts = 3;
                }
            }
        } while (!btnlog);

// Switch to Google login window
        const parentHandle = await browser.getWindowHandle();
        const childHandles = await browser.getWindowHandles();

        for (const handle of childHandles) {
            if (handle !== parentHandle) {
                await browser.switchToWindow(handle);
                console.log(`Switched to window with title: ${await browser.getTitle()}`);
                //await this.takeScreenshot('Switched to Google login window');
                break;
            }
        }

// Handle potential iframe situation
        const iframes = await $$('iframe');
        if (await iframes.length > 0) {
            await browser.switchToFrame(iframes[0]);
            console.log('Switched to iframe containing the email input');
        }

// Wait for the email input field to be present and interact with it
        try {
            await Login.emailInput.setValue('era.ilyasa@nusantara.technology');
            //await this.takeScreenshot('Entered email');

            await Login.nextButton.click();
            //await this.takeScreenshot('Clicked Next after email');
        } catch (e) {
            const error = e as Error; // Type assertion to treat 'e' as Error
            console.error('Error interacting with email input:', error.message);
            //await this.takeScreenshot('Failed to interact with email input');
            throw error; 
        }

// Wait for the password input field to be present and interact with it
        await Login.passwordInput.setValue('Erailyasa11223?');
        //await this.takeScreenshot('Entered password');
        await Login.nextButton.click();
        //await this.takeScreenshot('Clicked Next after password');
        // await browser.pause(5000);

// Switch back to the original window
        await browser.switchToWindow(parentHandle);
        //await this.takeScreenshot('Switched back to the original window');
        await browser.pause(5000);
})

Then('I see usernameDisplay', async() => {
    await expect (login.usernameDisplay).toBeExisting();
    const title = await login.usernameDisplay.getText();
    console.log(title);
})

