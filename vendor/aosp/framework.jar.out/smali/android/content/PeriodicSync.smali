.class public Landroid/content/PeriodicSync;
.super Ljava/lang/Object;
.source "PeriodicSync.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final flexTime:J

.field public final period:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/content/PeriodicSync$1;

    invoke-direct {v0}, Landroid/content/PeriodicSync$1;-><init>()V

    sput-object v0, Landroid/content/PeriodicSync;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "periodInSeconds"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    .line 49
    iput-object p2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    .line 50
    if-nez p3, :cond_0

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 55
    :goto_0
    iput-wide p4, p0, Landroid/content/PeriodicSync;->period:J

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "period"    # J
    .param p6, "flexTime"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    .line 79
    iput-object p2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 81
    iput-wide p4, p0, Landroid/content/PeriodicSync;->period:J

    .line 82
    iput-wide p6, p0, Landroid/content/PeriodicSync;->flexTime:J

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/PeriodicSync;)V
    .locals 2
    .param p1, "other"    # Landroid/content/PeriodicSync;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    .line 66
    iget-object v0, p1, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 68
    iget-wide v0, p1, Landroid/content/PeriodicSync;->period:J

    iput-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    .line 69
    iget-wide v0, p1, Landroid/content/PeriodicSync;->flexTime:J

    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/PeriodicSync$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/PeriodicSync$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/PeriodicSync;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 155
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    instance-of v3, p1, Landroid/content/PeriodicSync;

    if-nez v3, :cond_2

    move v1, v2

    .line 125
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/content/PeriodicSync;

    .line 128
    .local v0, "other":Landroid/content/PeriodicSync;
    iget-object v3, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    iget-object v4, v0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Landroid/content/PeriodicSync;->period:J

    iget-wide v6, v0, Landroid/content/PeriodicSync;->period:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-object v4, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v3, v4}, Landroid/content/PeriodicSync;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/content/PeriodicSync;->period:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/content/PeriodicSync;->flexTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 103
    iget-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    return-void
.end method
