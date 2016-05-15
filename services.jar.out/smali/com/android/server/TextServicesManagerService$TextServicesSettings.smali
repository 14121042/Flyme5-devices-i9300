.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 989
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    .line 992
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 993
    iput p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 994
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1012
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1013
    :try_start_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne p1, v3, :cond_0

    monitor-exit v2

    .line 1017
    :goto_0
    return v1

    .line 1014
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1015
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 1018
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1014
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1052
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 3
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1028
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1034
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1007
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1008
    monitor-exit v1

    .line 1009
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 1002
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1003
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1039
    return-void

    .line 1037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
