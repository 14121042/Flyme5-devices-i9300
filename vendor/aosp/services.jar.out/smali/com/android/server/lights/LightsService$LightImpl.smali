.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessLevel:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mModesUpdate:Z

.field private mMultipleLeds:Z

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 2
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 42
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    .line 44
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 124
    :cond_0
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 125
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 126
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 127
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 129
    const-wide/32 v0, 0x20000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLight("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    iget v8, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    iget-boolean v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v9}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    :cond_1
    return-void

    .line 131
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 92
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 93
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 101
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    :cond_0
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 51
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    and-int/lit16 v1, p1, 0xff

    .line 57
    .local v1, "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setModes(IZ)V
    .locals 1
    .param p1, "brightnessLevel"    # I
    .param p2, "multipleLeds"    # Z

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    if-eq v0, p2, :cond_1

    .line 84
    iput-boolean p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 87
    :cond_1
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
