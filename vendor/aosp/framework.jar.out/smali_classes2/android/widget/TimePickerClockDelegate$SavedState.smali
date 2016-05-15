.class Landroid/widget/TimePickerClockDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePickerClockDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mInKbMode:Z

.field private final mIs24HourMode:Z

.field private final mMinute:I

.field private final mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TimePickerClockDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 549
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    .line 556
    return-void

    :cond_0
    move v0, v2

    .line 552
    goto :goto_0

    :cond_1
    move v1, v2

    .line 553
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerClockDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "isKbMode"    # Z
    .param p7, "currentItemShowing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "IIZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p6, "typedTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 540
    iput p2, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    .line 541
    iput p3, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    .line 542
    iput-boolean p4, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    .line 543
    iput-boolean p5, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    .line 544
    iput-object p6, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    .line 545
    iput p7, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    .line 546
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/util/ArrayList;
    .param p7, "x6"    # I
    .param p8, "x7"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 527
    invoke-direct/range {p0 .. p7}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    return v0
.end method

.method public getTypesTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public inKbMode()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    return v0
.end method

.method public is24HourMode()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 590
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return-void

    :cond_0
    move v0, v2

    .line 587
    goto :goto_0

    :cond_1
    move v1, v2

    .line 588
    goto :goto_1
.end method
