.class public Landroid/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_SIZE:I = 0x10


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRoaming:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mIccId:Ljava/lang/String;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconTint:I

.field private mId:I

.field private mMcc:I

.field private mMnc:I

.field private mNameSource:I

.field private mNumber:Ljava/lang/String;

.field public mNwMode:I

.field private mSimSlotIndex:I

.field public mStatus:I

.field public mUserNwMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # I
    .param p12, "mnc"    # I
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "status"    # I
    .param p15, "nwMode"    # I
    .param p16, "userNwMode"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    .line 133
    iput-object p2, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 134
    iput p3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    .line 135
    iput-object p4, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 136
    iput-object p5, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 137
    iput p6, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    .line 138
    iput p7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 139
    iput-object p8, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 140
    iput p9, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 141
    iput-object p10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 142
    iput p11, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    .line 143
    iput p12, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    .line 144
    iput p14, p0, Landroid/telephony/SubscriptionInfo;->mStatus:I

    .line 145
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mNwMode:I

    .line 146
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mUserNwMode:I

    .line 147
    iput-object p13, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 220
    .local v6, "width":I
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 221
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 224
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v3, v6, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 226
    .local v7, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 230
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    iget v11, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 231
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 235
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    const-string/jumbo v10, "sans-serif"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    const/high16 v10, 0x41800000    # 16.0f

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "index":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v5, "textBound":Landroid/graphics/Rect;
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 244
    int-to-float v10, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-float v11, v11

    sub-float v8, v10, v11

    .line 245
    .local v8, "xOffset":F
    int-to-float v10, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    sub-float v9, v10, v11

    .line 246
    .local v9, "yOffset":F
    invoke-virtual {v0, v2, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRoaming()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconTint()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    return v0
.end method

.method public getNameSource()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNwMode()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNwMode:I

    return v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mStatus:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    return v0
.end method

.method public getUserNwMode()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mUserNwMode:I

    return v0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 199
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 184
    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1, "iconTint"    # I

    .prologue
    .line 265
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nameSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mcc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mnc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNwMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUserNwMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mUserNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 361
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 366
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNwMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mUserNwMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 377
    return-void
.end method
