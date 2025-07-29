/**
 * @file background.js
 * @description 监听快捷键并注入脚本
 */

/**
 * 监听快捷键命令
 * @param {string} command - 命令名称
 */
chrome.commands.onCommand.addListener((command) => {
  if (command === "toggle-403-mask") {
    chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
      chrome.scripting.executeScript({
        target: {tabId: tabs[0].id},
        files: ['toggle403.js']
      });
    });
  }
});