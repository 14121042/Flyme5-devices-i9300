.class public Landroid/service/notification/ZenModeConfig$DowntimeInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DowntimeInfo"
.end annotation


# instance fields
.field public endHour:I

.field public endMinute:I

.field public mode:Ljava/lang/String;

.field public none:Z

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 604
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    if-nez v2, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 605
    check-cast v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .line 606
    .local v0, "other":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->none:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->none:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method
