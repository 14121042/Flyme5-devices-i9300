.class Lcom/android/server/wifi/WifiController$ApEnabledState$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController$ApEnabledState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstChange:Z

.field lastSub:Landroid/telephony/SubscriptionInfo;

.field lastSubscriberId:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$ApEnabledState;)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 617
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 619
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 622
    .local v0, "currentSub":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "currentSubscriberId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 635
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    if-eqz v3, :cond_2

    .line 636
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    .line 637
    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    .line 639
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    goto :goto_0

    .line 649
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    .line 655
    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSubscriberId:Ljava/lang/String;

    .line 657
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400db

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 660
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "disabling Wifi AP due to Subscriber Id (IMSI) change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 661
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
