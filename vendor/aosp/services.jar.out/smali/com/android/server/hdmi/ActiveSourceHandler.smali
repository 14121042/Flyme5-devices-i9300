.class final Lcom/android/server/hdmi/ActiveSourceHandler;
.super Ljava/lang/Object;
.source "ActiveSourceHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveSourceHandler"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 52
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 53
    iput-object p2, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 54
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;
    .locals 2
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v0, "ActiveSourceHandler"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceHandler;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0
.end method

.method private final getSourceAddress()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActiveSourceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .locals 8
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 64
    iget-object v4, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 65
    .local v4, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v7, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v6, v7}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 66
    .local v2, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_0

    .line 67
    invoke-virtual {v4, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 70
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 71
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 72
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v6, :cond_1

    .line 73
    .local v3, "notifyInputChange":Z
    :goto_0
    iget v6, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v4, v6, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 74
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    .line 91
    .end local v3    # "notifyInputChange":Z
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 72
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    .line 80
    .local v1, "current":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v6, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-direct {p0}, Lcom/android/server/hdmi/ActiveSourceHandler;->getSourceAddress()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 81
    iget v6, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v7, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-static {v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 83
    .local v0, "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v6, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 84
    invoke-virtual {v4, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 85
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->invokeCallback(I)V

    goto :goto_1

    .line 87
    .end local v0    # "activeSourceCommand":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_3
    iget v5, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget v6, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget-object v7, p0, Lcom/android/server/hdmi/ActiveSourceHandler;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_1
.end method
