import missionRegularPage from "../../../pageobjects/Engagement/Mission/missionRegularPage";
import { Given, When, Then } from '@cucumber/cucumber';

const mission = missionRegularPage;

When ('User click "navMenuMarketing" in global page', async() => {
    await mission.navMenuMarketing.scrollIntoView();
    await mission.navMenuMarketing.click();
})


When ('User click "menuMissionV4" inside "navMenuMarketing"', async() => {
    await mission.menuMissionV4.scrollIntoView();
    await mission.menuMissionV4.click();
})


When ('User click "menuMisiRegular" inside "menuMissionV4"', async()=> {
    await mission.menuMisiRegular.click();
})


When ('User wait for 5 seconds', async() => {
    await browser.pause(5000);
})


Given ('User click "btnBuatMisiPage" in "menuMissionRegular"', async() => {
    await mission.btnBuatMisiPage.click();
})


When ('User wait for 3 seconds', async() => {
    await browser.pause(3000);
})


When ('User input {string} into "fieldInputNamaMisi"', async(namaMission) => {
    await mission.fieldInputNamaMisi.setValue(namaMission);
})


When ('User click "fieldPeriodeMisi" inside "menuMissionRegular"', async() => {
    await mission.fieldPeriodeMisi.click();
})


When ('User input "startDate" into "fieldPeriodeMisi"', async() => {
    // await mission.fieldInputStarDate.clearValue();
    await mission.fieldInputStarDate.click();
    // await browser.pause();
    // // await mission.fieldInputEndDate.clearValue();
    // await mission.fieldInputEndDate.click();
})


When ('User input "endDate" into "fieldPeriodeMisi"', async() => {
    // await mission.fieldInputEndDate.clearValue();
    await mission.fieldInputEndDate.click();
})


When ('User click "radioBtnFixed" in "menuMissionV4"', async() => {
    await mission.radioBtnFixed.click();
})


 When ('User input "durasi" in "fieldInputDurasi" in "menuMissionV4"', async() => {
    await mission.fieldInputDurasi.setValue('2');
 })

 
When ('User click "fieldTipeUser" in "menuMissionV4"', async() => {
    await mission.fieldTipeUser.click();
})


When ('User click "optTipeUser0" in "fieldTipeUser"', async() => {
    await mission.optTipeUser0.click();
})


When ('User click "fieldArea" in "menuMissionV4"', async() => {
    await mission.fieldArea.click();
})


When ('User click "optArea0" in "fieldArea"', async() => {
    await mission.optArea0.click();
})


When ('User click "fieldTipeTarget" in "menuMissionV4"', async() => {
    await mission.fieldTipeTarget.click();
})


When ('User click "optTipeTarget0" in "fieldTipeTarget"', async() => {
    await mission.optTipeTarget0.click();
})


When ('User click "fieldSyaratDanKetentuan" in "menuMissionV4"', async() => {
    await mission.fieldSyaratDanKetentuan.scrollIntoView();
    await mission.fieldSyaratDanKetentuan.click();
})


When ('User input {string} into "fieldSyaratDanKetentuan" in "menuMissionV4"', async(syaratDanKetentuan) => {
    await mission.fieldSyaratDanKetentuan.setValue(syaratDanKetentuan);
})


When ('User click "fieldTipeProduk" in "menuMissionV4"', async() => {
    await mission.fieldTipeProduk.click();
})


When ('User click "radioBtnFixed"', async() => {
    await mission.radioBtnFixed.click();
})


When ('User click "fieldInputTarget" in "menuMissionV4"', async() => {
    await mission.fieldInputTarget.click();
})


When ('User set value {string} into "fieldInputTarget"', async(target) => {
    await mission.fieldInputTarget.setValue(target)
})


When ('User click "fieldInputReward" in "menuMissionV4"', async() => {
    await mission.fieldInputReward.click();
})


When ('User set value {string} into "fieldInputReward"', async(reward) => {
    await mission.fieldInputReward.setValue(reward)
})


When ('User click "toggleSwitchLeaderBoard" in "menuMissionV4"', async() => {
    await mission.toggleSwitchLeaderBoard.click();
})


When ('User click "fieldPencapaianMinimal" in "menuMissionV4"', async() => {
    await mission.fieldPencapaianMinimal.click();
})


When ('User set value {string}', async(pencapaianMinimal) => {
    await mission.fieldPencapaianMinimal.setValue(pencapaianMinimal)
})



When ('User click "fieldBatasPemenang" in "menuMissionV4"', async() => {
    await mission.fieldBatasPemenang.click();
})


When ('User input batas pemenang in "menuMissionV4"', async() => {
    await mission.fieldBatasPemenang.setValue('2')
})


When ('User click "btnBuatMisi" in "menuMissionV4"', async() => {
    await mission.btnBuatMisi.click();
})


Then ('User able to see "Data berhasil disimpan" message verification', async() => {
    await browser.pause(10000);
})
    



