.class public Landroid/os/BuildExt;
.super Ljava/lang/Object;
.source "BuildExt.java"


# static fields
.field public static final CHINAMOBILE_TEST:Ljava/lang/Boolean;

.field public static final CTA:Ljava/lang/String;

.field public static final CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

.field private static final CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

.field public static final HAS_SMARTBAR:Ljava/lang/String;

.field public static final HIDE_INFO:Ljava/lang/Boolean;

.field public static final IS_CTA:Z

.field public static final IS_FLYMEROM:Z

.field public static final IS_M1:Ljava/lang/Boolean;

.field public static final IS_M1_NOTE:Ljava/lang/Boolean;

.field public static final IS_M2:Ljava/lang/Boolean;

.field public static final IS_M2C:Ljava/lang/Boolean;

.field public static final IS_M2_NOTE:Ljava/lang/Boolean;

.field public static final IS_M2_NOTEC:Ljava/lang/Boolean;

.field public static final IS_M71C:Ljava/lang/Boolean;

.field public static final IS_M80:Ljava/lang/Boolean;

.field public static final IS_M91:Ljava/lang/Boolean;

.field public static final IS_M98:Ljava/lang/Boolean;

.field public static final IS_MA01:Ljava/lang/Boolean;

.field public static final IS_MA01C:Ljava/lang/Boolean;

.field public static final IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

.field public static final IS_MX2:Ljava/lang/Boolean;

.field public static final IS_MX3:Ljava/lang/Boolean;

.field public static final IS_MX4:Ljava/lang/Boolean;

.field public static final IS_MX4_Pro:Ljava/lang/Boolean;

.field public static final IS_MX5:Ljava/lang/Boolean;

.field public static final IS_MX5_PRO:Ljava/lang/Boolean;

.field public static final IS_PRODUCT:Z

.field public static final IS_SHOPDEMO:Ljava/lang/Boolean;

.field public static final IS_TD_PLATFORM:Ljava/lang/Boolean;

.field public static final IS_WCDMA_PLATFORM:Ljava/lang/Boolean;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MZ_MODEL:Ljava/lang/String;

.field private static final PROP_KEY_DEVICE_IDENTIFY:Ljava/lang/String; = "ro.product.flyme.model"

.field private static final TAG:Ljava/lang/String; = "BuildExt"

.field private static mHasNavBar:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const-string/jumbo v0, "ro.build.cta"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    const-string v3, "cta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    .line 41
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    sput-boolean v0, Landroid/os/BuildExt;->IS_FLYMEROM:Z

    .line 43
    const-string/jumbo v0, "ro.error.receiver.default"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.howell.logsnapshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/os/BuildExt;->IS_PRODUCT:Z

    .line 47
    const-string/jumbo v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "td-scdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    .line 50
    const-string/jumbo v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wcdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_WCDMA_PLATFORM:Ljava/lang/Boolean;

    .line 53
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/BuildExt;->isChinaUnicom()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    .line 57
    invoke-static {}, Landroid/os/BuildExt;->isChinaMobile()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    .line 58
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mobilepublic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    .line 60
    const-string/jumbo v0, "ro.chinamobile.test"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CHINAMOBILE_TEST:Ljava/lang/Boolean;

    .line 63
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "chinatelecom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    .line 69
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m75"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "k95v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M460A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mx4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    .line 73
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m76"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "espresso5430"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "exynos5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "ro.arch"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "exynos5430"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    .line 81
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m71"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m1 note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "k52v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    .line 87
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m79"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "k32v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_3
    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    .line 93
    const-string/jumbo v0, "ro.build.device.name"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m71c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M71C:Ljava/lang/Boolean;

    .line 97
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MX5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mt6795"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_4
    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX5:Ljava/lang/Boolean;

    .line 103
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NIUX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PRO 5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_5
    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX5_PRO:Ljava/lang/Boolean;

    .line 109
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mt6753"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m2 note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_6
    move v0, v1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2_NOTE:Ljava/lang/Boolean;

    .line 114
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M571C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m81c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_7
    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2_NOTEC:Ljava/lang/Boolean;

    .line 119
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mt6735"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_8
    move v0, v1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2:Ljava/lang/Boolean;

    .line 124
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M578C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m88c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2C:Ljava/lang/Boolean;

    .line 127
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MA01C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m1c metal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M57AC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "ro.product.flyme.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MA01C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_a
    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MA01C:Ljava/lang/Boolean;

    .line 135
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MA01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "kn2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m1 metal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_b
    move v0, v1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MA01:Ljava/lang/Boolean;

    .line 138
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m8097"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "ro.product.flyme.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "8097"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_c
    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M80:Ljava/lang/Boolean;

    .line 141
    const-string/jumbo v0, "ro.product.flyme.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9155"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M91:Ljava/lang/Boolean;

    .line 143
    const-string/jumbo v0, "ro.product.flyme.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M98:Ljava/lang/Boolean;

    .line 146
    const-string/jumbo v0, "ro.meizu.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->MZ_MODEL:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    .line 148
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    .line 150
    const-string/jumbo v0, "ro.meizu.customize.demo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    .line 153
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->MANUFACTURER:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "ro.flyme.hideinfo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HIDE_INFO:Ljava/lang/Boolean;

    .line 399
    const-string/jumbo v0, "ro.meizu.has_smartbar"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    return-void

    :cond_e
    move v0, v2

    .line 43
    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 69
    goto/16 :goto_1

    :cond_10
    move v0, v2

    .line 73
    goto/16 :goto_2

    :cond_11
    move v0, v2

    .line 81
    goto/16 :goto_3

    :cond_12
    move v0, v2

    .line 87
    goto/16 :goto_4

    :cond_13
    move v0, v2

    .line 97
    goto/16 :goto_5

    :cond_14
    move v0, v2

    .line 103
    goto/16 :goto_6

    :cond_15
    move v0, v2

    .line 109
    goto/16 :goto_7

    :cond_16
    move v0, v2

    .line 114
    goto/16 :goto_8

    :cond_17
    move v0, v2

    .line 119
    goto/16 :goto_9

    :cond_18
    move v0, v2

    .line 124
    goto/16 :goto_a

    :cond_19
    move v0, v2

    .line 127
    goto/16 :goto_b

    :cond_1a
    move v0, v2

    .line 135
    goto/16 :goto_c

    :cond_1b
    move v1, v2

    .line 138
    goto/16 :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightnessMaxLevel()I
    .locals 1

    .prologue
    .line 381
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    const/16 v0, 0x7f8

    .line 387
    :goto_0
    return v0

    .line 383
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    :cond_2
    const/16 v0, 0x800

    goto :goto_0

    .line 387
    :cond_3
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public static getColorType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    const-string v0, "/proc/lk_info/colortype"

    .line 419
    .local v0, "clolorTypePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 422
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 424
    .local v4, "tempString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 425
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    .line 430
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 427
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 430
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    const-string/jumbo v5, "unknown"

    goto :goto_0

    .line 428
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 442
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEseSmartMX(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smartmx_ese"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNFC()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string/jumbo v4, "ro.product.manufacturer"

    invoke-static {v4}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "manufacturer":Ljava/lang/String;
    const-string/jumbo v4, "meizu"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const-string/jumbo v4, "ro.meizu.hardware.nfc"

    invoke-static {v4}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    :cond_0
    const/4 v3, 0x1

    .line 250
    :cond_1
    :goto_0
    return v3

    .line 241
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 242
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_3

    .line 243
    const-string v4, "BuildExt"

    const-string v5, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_3
    :try_start_0
    const-string v4, "android.hardware.nfc"

    invoke-interface {v2, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BuildExt"

    const-string v5, "Package manager query failed, assuming no NFC feature"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hasNavigationBar()Z
    .locals 3

    .prologue
    .line 192
    sget-object v2, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "hasNavBar":Z
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 196
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 199
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    .line 202
    :cond_0
    sget-object v2, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 197
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static hasSmartBar()Z
    .locals 2

    .prologue
    .line 405
    sget-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlackDevice()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 368
    sget-object v2, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    .local v0, "deviceTpColor":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 371
    .end local v0    # "deviceTpColor":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sys/devices/mx_tsp/appid"

    invoke-static {v2}, Landroid/os/BuildExt;->readFromFb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .restart local v0    # "deviceTpColor":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "B:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BS:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBrcm43341()Z
    .locals 2

    .prologue
    .line 257
    const-string v0, "brcm43341"

    const-string/jumbo v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChinaMobile()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isChinaUnicom()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 209
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinaunicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCmccSimCard()Z
    .locals 4

    .prologue
    .line 306
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "BuildExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmcc prop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "46000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    const/4 v1, 0x1

    .line 321
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDailyFirmware()Z
    .locals 2

    .prologue
    .line 446
    const-string/jumbo v0, "ro.meizu.build.isdaily"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFlymeRom()Z
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v1, "ro.meizu.rom.config"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "romConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIndiaVersion()Z
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "ro.meizu.locale.region"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLtgModem()Z
    .locals 2

    .prologue
    .line 271
    const-string v0, "TD"

    const-string/jumbo v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLwgModem()Z
    .locals 2

    .prologue
    .line 278
    const-string v0, "UMTS"

    const-string/jumbo v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMzProduct()Z
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNxpPn547()Z
    .locals 2

    .prologue
    .line 264
    const-string/jumbo v0, "nxppn547"

    const-string/jumbo v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProductInternational()Z
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "ro.product.locale.language"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.locale.region"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.product.locale"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShopDemoVersion()Z
    .locals 1

    .prologue
    .line 434
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUnicomSimCard()Z
    .locals 4

    .prologue
    .line 286
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "BuildExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUnicom prop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v1, "46001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWeeklyFirmware()Z
    .locals 2

    .prologue
    .line 450
    const-string/jumbo v0, "ro.meizu.build.isbeta"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFromFb(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "deviceNode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "fin":Ljava/io/FileInputStream;
    const/16 v7, 0x80

    new-array v3, v7, [B

    .line 343
    .local v3, "inOutb":[B
    const/4 v4, 0x0

    .line 345
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 347
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :try_start_2
    const-string v7, "BuildExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat sys/devices/mx_tsp/appid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 355
    if-eqz v2, :cond_0

    .line 357
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .line 363
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 359
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v7

    :cond_0
    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 363
    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v7, "BuildExt"

    const-string/jumbo v8, "readFromFb error: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 355
    if-eqz v1, :cond_1

    .line 357
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v5, v4

    .line 358
    goto :goto_0

    .line 359
    :catch_2
    move-exception v7

    :cond_1
    move-object v5, v6

    .line 363
    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v7, "BuildExt"

    const-string/jumbo v8, "readFromFb error: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    if-eqz v1, :cond_2

    .line 357
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v5, v4

    .line 358
    goto :goto_0

    .line 359
    :catch_4
    move-exception v7

    :cond_2
    move-object v5, v6

    .line 363
    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_3

    .line 357
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v5, v4

    .line 358
    goto :goto_0

    .line 359
    :catch_5
    move-exception v7

    :cond_3
    move-object v5, v6

    .line 363
    goto :goto_0

    .line 355
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 352
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 350
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static setEseSmartMX(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smartmx_ese"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
