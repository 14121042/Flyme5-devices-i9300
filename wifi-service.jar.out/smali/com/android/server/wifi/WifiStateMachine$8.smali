.class Lcom/android/server/wifi/WifiStateMachine$8;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 4689
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$8;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4704
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Soft AP start successful"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4705
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4706
    :goto_1
    return-void

    .line 4693
    :catch_0
    move-exception v0

    .line 4694
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4696
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 4697
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$8;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4698
    :catch_1
    move-exception v1

    .line 4699
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap re-start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4700
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20017

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1
.end method
