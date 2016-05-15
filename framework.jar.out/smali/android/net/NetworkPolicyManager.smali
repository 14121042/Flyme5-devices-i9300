.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_ALLOW_BACKGROUND_BATTERY_SAVE:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .param p1, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 74
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 194
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    if-ne v3, v6, :cond_0

    .line 195
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    .local v2, "now":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 203
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 204
    .local v0, "cycle":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 205
    invoke-virtual {v0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 206
    invoke-virtual {v0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 207
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/GregorianCalendar;I)V

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 212
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 213
    .local v1, "lastMonth":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 214
    invoke-virtual {v1, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 215
    invoke-virtual {v1, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 216
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 217
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 219
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 220
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/GregorianCalendar;I)V

    .line 223
    .end local v1    # "lastMonth":Ljava/util/GregorianCalendar;
    :cond_1
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 229
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 234
    .local v2, "now":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 237
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 238
    .local v0, "cycle":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 239
    invoke-virtual {v0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 240
    invoke-virtual {v0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 241
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/GregorianCalendar;I)V

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 246
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 247
    .local v1, "nextMonth":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 248
    invoke-virtual {v1, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 249
    invoke-virtual {v1, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 250
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 251
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 253
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 254
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/GregorianCalendar;I)V

    .line 257
    .end local v1    # "nextMonth":Ljava/util/GregorianCalendar;
    :cond_1
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 331
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 332
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "REJECT_METERED_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 335
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 340
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 341
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "REJECT_METERED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 344
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .locals 4
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    .prologue
    .line 268
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 270
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 271
    invoke-static {v0, p1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/GregorianCalendar;I)V

    .line 272
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 273
    return-void
.end method

.method private static snapToCycleDay(Ljava/util/GregorianCalendar;I)V
    .locals 5
    .param p0, "time"    # Ljava/util/GregorianCalendar;
    .param p1, "cycleDay"    # I

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 279
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 280
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 281
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 282
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 283
    invoke-virtual {p0, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 284
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 285
    const/4 v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 2

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPowerSaveAppIdWhitelist()[I
    .locals 2

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getPowerSaveAppIdWhitelist()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getRestrictBackground()Z
    .locals 2

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 1
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method
