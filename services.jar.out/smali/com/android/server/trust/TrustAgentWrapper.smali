.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# static fields
.field private static final DATA_DURATION:Ljava/lang/String; = "duration"

.field private static final DEBUG:Z = false

.field private static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final MSG_GRANT_TRUST:I = 0x1

.field private static final MSG_MANAGING_TRUST:I = 0x6

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final MSG_REVOKE_TRUST:I = 0x2

.field private static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field private final mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManagingTrust:Z

.field private mMaximumTimeToLock:J

.field private mMessage:Ljava/lang/CharSequence;

.field private final mName:Landroid/content/ComponentName;

.field private mScheduledRestartUptimeMillis:J

.field private mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field private mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field private mTrustDisabledByDpm:Z

.field private final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field private mTrusted:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trustManagerService"    # Lcom/android/server/trust/TrustManagerService;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, 0x1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    .line 226
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 260
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 261
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 262
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 263
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 264
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 266
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "componentName"

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "alarmFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "pathUri":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 274
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.PROVIDE_TRUST_AGENT"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    .line 279
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p3, v2, v6, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 280
    iget-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v2, :cond_0

    .line 281
    const-string v2, "TrustAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t bind to TrustAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Landroid/service/trust/ITrustAgentService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustAgentWrapper;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustAgentWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 286
    const-string v0, "TrustAgentWrapper"

    const-string v1, "Remote Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    return-void
.end method

.method private onTrustTimeout()V
    .locals 2

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private scheduleRestart()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 430
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 432
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 433
    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 407
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 408
    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 409
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagingTrust()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceLocked()V
    .locals 2

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDeviceUnlocked()V
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUnlockAttempt(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method updateDevicePolicyFeatures()Z
    .locals 9

    .prologue
    .line 341
    const/4 v3, 0x0

    .line 344
    .local v3, "trustDisabled":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v6, :cond_1

    .line 345
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 348
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    .line 350
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v8, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v3, 0x1

    .line 354
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 359
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 360
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    invoke-interface {v6, v0, v7}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 363
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 364
    .local v4, "maxTimeToLock":J
    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 367
    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 368
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    .line 369
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 370
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 371
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "maxTimeToLock":J
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v6, v3, :cond_2

    .line 379
    iput-boolean v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 380
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IZ)V

    .line 382
    :cond_2
    return v3

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
