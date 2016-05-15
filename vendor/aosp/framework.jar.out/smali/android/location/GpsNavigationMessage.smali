.class public Landroid/location/GpsNavigationMessage;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field private static final TAG:Ljava/lang/String; = "GpsNavigationMessage"

.field public static final TYPE_CNAV2:B = 0x4t

.field public static final TYPE_L1CA:B = 0x1t

.field public static final TYPE_L2CNAV:B = 0x2t

.field public static final TYPE_L5CNAV:B = 0x3t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mData:[B

.field private mMessageId:S

.field private mPrn:B

.field private mSubmessageId:S

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    .line 210
    new-instance v0, Landroid/location/GpsNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    .line 74
    return-void
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 137
    const-string v0, "<Invalid>"

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 129
    :pswitch_1
    const-string v0, "L1 C/A"

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v0, "L2-CNAV"

    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "L5-CNAV"

    goto :goto_0

    .line 135
    :pswitch_4
    const-string v0, "CNAV-2"

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 272
    iput-byte v1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 273
    iput-byte v1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 274
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 275
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 276
    sget-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 277
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()S
    .locals 1

    .prologue
    .line 163
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    return v0
.end method

.method public getPrn()B
    .locals 1

    .prologue
    .line 146
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    return v0
.end method

.method public getSubmessageId()S
    .locals 1

    .prologue
    .line 180
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 98
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    .line 92
    return-void
.end method

.method public set(Landroid/location/GpsNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GpsNavigationMessage;

    .prologue
    .line 80
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mType:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 81
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 82
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mMessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 83
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 84
    iget-object v0, p1, Landroid/location/GpsNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 85
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 208
    return-void
.end method

.method public setMessageId(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 170
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 171
    return-void
.end method

.method public setPrn(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 153
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 154
    return-void
.end method

.method public setSubmessageId(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 187
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 188
    return-void
.end method

.method public setType(B)V
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 114
    const-string v0, "GpsNavigationMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'type\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 118
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 251
    const-string v2, "   %-15s = %s\n"

    .line 252
    .local v2, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "GpsNavigationMessage:\n"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v7, "   %-15s = %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "Type"

    aput-object v9, v8, v10

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v7, "   %-15s = %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "Prn"

    aput-object v9, v8, v10

    iget-byte v9, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v7, "   %-15s = %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "MessageId"

    aput-object v9, v8, v10

    iget-short v9, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v7, "   %-15s = %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "SubmessageId"

    aput-object v9, v8, v10

    iget-short v9, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v7, "   %-15s = %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "Data"

    aput-object v9, v8, v10

    const-string/jumbo v9, "{"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v5, "        "

    .line 261
    .local v5, "prefix":Ljava/lang/String;
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v6, v0, v3

    .line 262
    .local v6, "value":B
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v5, ", "

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    .end local v6    # "value":B
    :cond_0
    const-string v7, " }"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 236
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 242
    return-void
.end method
