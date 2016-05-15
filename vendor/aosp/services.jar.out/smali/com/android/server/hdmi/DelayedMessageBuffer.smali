.class final Lcom/android/server/hdmi/DelayedMessageBuffer;
.super Ljava/lang/Object;
.source "DelayedMessageBuffer.java"


# instance fields
.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 36
    return-void
.end method

.method private removeActiveSource()V
    .locals 4

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 73
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 77
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 51
    .local v0, "buffered":Z
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void

    .line 53
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->removeActiveSource()V

    .line 54
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_1
        0x82 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method isBuffered(I)Z
    .locals 3
    .param p1, "opcode"    # I

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 81
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 82
    const/4 v2, 0x1

    .line 85
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method processActiveSource(I)V
    .locals 5
    .param p1, "address"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 142
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method

.method processAllMessages()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 93
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    return-void
.end method

.method processMessagesForDevice(I)V
    .locals 6
    .param p1, "address"    # I

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking message for address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 113
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_2
    return-void
.end method
