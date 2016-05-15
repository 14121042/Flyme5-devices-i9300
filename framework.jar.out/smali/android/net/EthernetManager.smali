.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$Listener;
    }
.end annotation


# static fields
.field private static final MSG_AVAILABILITY_CHANGED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/EthernetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IEthernetManager;

.field private final mServiceListener:Landroid/net/IEthernetServiceListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IEthernetManager;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/net/EthernetManager$1;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/net/EthernetManager$2;

    invoke-direct {v0, p0}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;)V

    iput-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    .line 79
    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/net/EthernetManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/net/EthernetManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/EthernetManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/net/EthernetManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1}, Landroid/net/IEthernetManager;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public removeListener(Landroid/net/EthernetManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/IpConfiguration;

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
