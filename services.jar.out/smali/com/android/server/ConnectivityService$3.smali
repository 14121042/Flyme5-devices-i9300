.class Lcom/android/server/ConnectivityService$3;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 6
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 1416
    iget-object v4, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1417
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1418
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1419
    .local v2, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1421
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 1422
    return-void

    .line 1421
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 0
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1445
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1401
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    monitor-exit v2

    .line 1407
    :goto_0
    return-void

    .line 1403
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldRules":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
