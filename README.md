# Go-the-f**k-to-sleep
早死的鸟儿晚睡晚起

作死的鸟儿不定时起

目录: [如何打卡](#如何打卡), [目标建立](#目标建立步骤), [有用的工具](#有用的工具) 

---

## 如何打卡
### 打卡前准备

[github contribute guide](https://www.dataschool.io/how-to-contribute-on-github/)

### 打卡步骤

#### 自动

1. 如果还没有创建自己的文件夹，或者已经到了新的一年了的话:

```bash
bash StartLogging.sh
```

2. 每天临睡前运行一下:

```bash
bash DailyCheckUp.sh
```

然后再问题下输入自己的晚睡原因

```bash
//程序会显示：What is your reason to sleep late today?
[在这里输入原因]
```

然后commit

```bash
//程序会显示：want to commit and push, 1 or 0?
[在这里输入1或0, 1代表要commit，0代表不commit]
//第一次会问你要不要记住你的选择：do you want the choice to be remembered, 1 or 0?
[想要记住就按1，不想要记住就按0]
```

#### 手动

1. 加入自己的文件夹，[]不要写进去(所有后面的步骤也都不要记进去)

   ```bash
   mkdir [你的git用户名]
   ```

2. ```bash
   cd [你的文件夹名字]
   ```

3. 如果有markdown编辑器可以在编辑器里操作，如果没有就(不要键入加号)：
   ```bash
   vim [你的git用户名(小写)+年份].md
   ```

4. 按一下i建, 然后键入（没有晚睡理由就写null）：
   ```bash 
   [日期] [入睡时间] [晚睡理由]
   ```

5. 按下esc建，然后键入：
   

每日一记，多记多健康

---

## 目标建立步骤

[[Back to top](#如何打卡)]


1. 进入你自己的文件夹

2. 遵循于于之前一样的命名逻辑
   ```bash
   vim [你的名字]+目标.md
   ```
   
3. Markdown有自己的一套task syntax，所以按下i后就可以直接键入：
   ```bash
   - [ ] [目标一] [目标截止日期/未来x时间内]
   - [ ] [目标二] [目标截止日期/未来x时间内]
   //以此类推
   ```
   
4. 重复打卡步骤第五步

鸟儿知道有虫子才会起床

---

## 有用的工具

[[Back to top](#如何打卡)]

[Day Progress Tracker](https://github.com/tiaod/day-progress) - 有助于察觉时间的流逝

[谷歌呼吸小工具](https://www.google.com/search?q=breathing+exercise&sxsrf=APq-WBsjKHnYEkpUGB3_BJ1SPv_F_8tAGg%3A1646711072741&ei=INEmYu_2LOLK0PEPn4WCuAc&oq=breathign+exc&gs_lcp=Cgdnd3Mtd2l6EAEYADIHCCMQsQIQJzIECAAQCjIECAAQCjIECAAQCjIECAAQCjIECAAQCjIECAAQCjIECAAQCjIECAAQCjIECAAQCjoECCMQJzoGCAAQChBDOgUIABCRAjoHCC4Q1AIQQzoFCC4QkQI6BAgAEEM6DgguEIAEELEDEMcBEKMCOggILhCABBCxAzoKCC4QsQMQ1AIQQzoECC4QQzoLCAAQgAQQsQMQyQM6BQgAEJIDOgcIABCxAxBDOggIABCABBCxAzoLCC4QgAQQxwEQrwE6CwgAEIAEELEDEIMBOgUIABCxAzoFCAAQgAQ6CAgAELEDEJECOgcIABCxAxAKOgcIABCABBAKSgQIQRgASgQIRhgAUABYkg5gnhhoAXABeACAAXOIAdwJkgEEMTIuMpgBAKABAcABAQ&sclient=gws-wiz) - 有助于睡觉前平复心情

[日常喝水提醒](https://github.com/mollydl/drink-water) - 保持脑子的水份有助睡眠质量

