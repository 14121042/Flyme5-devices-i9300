.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 159
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 161
    return-void
.end method

.method static synthetic access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/KeyguardManager;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 77
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 251
    :goto_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 2

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method
