#devices/base_cm

*cm-12.1* 基礎機型，是所有 *cm-12.1* 機型“插樁”的基礎。

目前的 *patch* 基於 *cm-12.1* 的  LMY49J 版本  制作

********

##base_cm使用方法：

###1.	下載

為了減少 *repo* 庫的體積， *base_cm* 暫時沒有放在 *repo* 的默認下載列表裏，

因此下載 *base_cm* 推薦使用 *git clone* 下載，第一次下載時先 *cd* 到 *devices* 目錄，然後輸入：

	git clone https://github.com/14121042/Flyme5-devices-i9300.git -b cm-12.1

下載完成後建議對其重命名,  *cd* 到 *devices* 目錄，輸入：

	mv ./Flyme5-devices-i9300 ./base_cm

即將其重命名為 *base_cm*，以後 *base_cm* 的更新則只需要 *cd* 到 *devices/base_cm* 目錄，輸入如下命令：

	git pull origin cm-12.1

即可下載 *base_cm* 的更新，如果不使用 *git clone* 下載，則需要每次下載整個zip包進行覆蓋，較為不便。

###2.	使用

正確下載後，與使用默認方式來 *patch*（即使用 *base* 來 *patch* ）的各項操作相同，只需要額外進行一項配置即可。

要使用指定 *base*（如 *base_cm* ）的 *patch* 來進行插樁，需要在你的機型目錄下的 *Makefile* 文件中進行配置，配置項為：

	BASE :=

在 *base* 及 *base_cm* 目錄下的 *Makefile* 文件中均有示例說明，按照說明正確配置即可。

例如，下載後的目錄你命名為 *base_cm*，配置示例如下：

	BASE :=base_cm

配置完成後，即可分別使用 *make patchall* 和 *make upgrade* 來進行首次插樁和更新。

**需要特別註意的是：**

*base_cm* 的正確運行可能需要對部分 *apk* 或者資源文件進行定制，但是需要定制的文件改動目前並沒有被包含在
*patchall* 及 *upgrade* 中，因此，你需要查看 *base_cm* 下對 *apk* 或者資源文件進行定制的文件以及其相應的配置信息，將配置文件和配置信息一並寫在你的機型目錄中。

	例如：不同的廠商會對ITelephony.aidl這個binder文件中的接口進行修改或者擴展，因此需要對這個binder接口的實現部

    分進行定制修改，它的實現部分通常位於TeleService.apk中的PhoneInterfaceManager文件中。由於base_cm已經對

    TeleService.apk進行了定制，因此需要自行將TeleService目錄拷貝到你的機型目錄中，並且在Makefile文件中給予相應

    的配置。

對 *base_cm* 中已經定制的其他 *apk* 或者資源文件可以采用類似的操作，若要詳細了解對 *apk* 或者資源文件進行定制的
方法請參考相關文檔。
