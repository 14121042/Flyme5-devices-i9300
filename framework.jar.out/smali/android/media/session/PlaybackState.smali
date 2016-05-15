.class public final Landroid/media/session/PlaybackState;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$Builder;,
        Landroid/media/session/PlaybackState$CustomAction;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaybackState"


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Landroid/media/session/PlaybackState$1;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$1;-><init>()V

    sput-object v0, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "updateTime"    # J
    .param p6, "speed"    # F
    .param p7, "bufferedPosition"    # J
    .param p9, "transportControls"    # J
    .param p12, "activeItemId"    # J
    .param p14, "error"    # Ljava/lang/CharSequence;
    .param p15, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJJ",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;J",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Landroid/media/session/PlaybackState;->mState:I

    .line 243
    iput-wide p2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 244
    iput p6, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 245
    iput-wide p4, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 246
    iput-wide p7, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 247
    iput-wide p9, p0, Landroid/media/session/PlaybackState;->mActions:J

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 249
    iput-wide p12, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 250
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 251
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # J
    .param p9, "x5"    # J
    .param p11, "x6"    # Ljava/util/List;
    .param p12, "x7"    # J
    .param p14, "x8"    # Ljava/lang/CharSequence;
    .param p15, "x9"    # Landroid/os/Bundle;
    .param p16, "x10"    # Landroid/media/session/PlaybackState$1;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p15}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mState:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    .line 261
    sget-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/session/PlaybackState$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/PlaybackState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/session/PlaybackState;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method static synthetic access$700(Landroid/media/session/PlaybackState;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/session/PlaybackState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionForRccFlag(I)J
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 511
    sparse-switch p0, :sswitch_data_0

    .line 533
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 513
    :sswitch_0
    const-wide/16 v0, 0x10

    goto :goto_0

    .line 515
    :sswitch_1
    const-wide/16 v0, 0x8

    goto :goto_0

    .line 517
    :sswitch_2
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 519
    :sswitch_3
    const-wide/16 v0, 0x200

    goto :goto_0

    .line 521
    :sswitch_4
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 523
    :sswitch_5
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 525
    :sswitch_6
    const-wide/16 v0, 0x40

    goto :goto_0

    .line 527
    :sswitch_7
    const-wide/16 v0, 0x20

    goto :goto_0

    .line 529
    :sswitch_8
    const-wide/16 v0, 0x100

    goto :goto_0

    .line 531
    :sswitch_9
    const-wide/16 v0, 0x80

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getActionsFromRccControlFlags(I)J
    .locals 8
    .param p0, "rccFlags"    # I

    .prologue
    .line 484
    const-wide/16 v0, 0x0

    .line 485
    .local v0, "actions":J
    const-wide/16 v2, 0x1

    .line 486
    .local v2, "flag":J
    :goto_0
    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 487
    int-to-long v4, p0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 488
    long-to-int v4, v2

    invoke-static {v4}, Landroid/media/session/PlaybackState;->getActionForRccFlag(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 490
    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_0

    .line 492
    :cond_1
    return-wide v0
.end method

.method public static getRccControlFlagsFromActions(J)I
    .locals 8
    .param p0, "actions"    # J

    .prologue
    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, "rccFlags":I
    const-wide/16 v0, 0x1

    .line 501
    .local v0, "action":J
    :goto_0
    cmp-long v3, v0, p0

    if-gtz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 502
    and-long v4, v0, p0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 503
    invoke-static {v0, v1}, Landroid/media/session/PlaybackState;->getRccFlagForAction(J)I

    move-result v3

    or-int/2addr v2, v3

    .line 505
    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    goto :goto_0

    .line 507
    :cond_1
    return v2
.end method

.method private static getRccFlagForAction(J)I
    .locals 4
    .param p0, "action"    # J

    .prologue
    const/4 v1, 0x0

    .line 539
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    long-to-int v0, p0

    .line 540
    .local v0, "testAction":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 562
    :goto_1
    return v1

    .end local v0    # "testAction":I
    :cond_0
    move v0, v1

    .line 539
    goto :goto_0

    .line 542
    .restart local v0    # "testAction":I
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_1

    .line 544
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 546
    :sswitch_2
    const/4 v1, 0x4

    goto :goto_1

    .line 548
    :sswitch_3
    const/16 v1, 0x8

    goto :goto_1

    .line 550
    :sswitch_4
    const/16 v1, 0x10

    goto :goto_1

    .line 552
    :sswitch_5
    const/16 v1, 0x20

    goto :goto_1

    .line 554
    :sswitch_6
    const/16 v1, 0x40

    goto :goto_1

    .line 556
    :sswitch_7
    const/16 v1, 0x80

    goto :goto_1

    .line 558
    :sswitch_8
    const/16 v1, 0x100

    goto :goto_1

    .line 560
    :sswitch_9
    const/16 v1, 0x200

    goto :goto_1

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getRccStateFromState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 454
    packed-switch p0, :pswitch_data_0

    .line 476
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 456
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 458
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 460
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 462
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 466
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 468
    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    .line 470
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 472
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 474
    :pswitch_a
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getStateFromRccState(I)I
    .locals 1
    .param p0, "rccState"    # I

    .prologue
    .line 419
    packed-switch p0, :pswitch_data_0

    .line 441
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 421
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 423
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 425
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 427
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 429
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 431
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 433
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 435
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 437
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    .line 439
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 290
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 293
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 297
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 300
    return-void
.end method
