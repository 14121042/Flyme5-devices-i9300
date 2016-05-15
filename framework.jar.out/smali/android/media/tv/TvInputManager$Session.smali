.class public final Landroid/media/tv/TvInputManager$Session;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Session$PendingEvent;,
        Landroid/media/tv/TvInputManager$Session$TvInputEventSender;,
        Landroid/media/tv/TvInputManager$Session$InputEventHandler;,
        Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    }
.end annotation


# static fields
.field static final DISPATCH_HANDLED:I = 0x1

.field static final DISPATCH_IN_PROGRESS:I = -0x1

.field static final DISPATCH_NOT_HANDLED:I = 0x0

.field private static final INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/view/InputChannel;

.field private final mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAudioTrackId:Ljava/lang/String;

.field private mSelectedSubtitleTrackId:Ljava/lang/String;

.field private mSelectedVideoTrackId:Ljava/lang/String;

.field private mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

.field private final mSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field private final mTrackLock:Ljava/lang/Object;

.field private final mUserId:I

.field private mVideoHeight:I

.field private final mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ITvInputManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ITvInputManager;",
            "II",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/TvInputManager$SessionCallbackRecord;>;"
    const/16 v2, 0x14

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    new-instance v0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    .line 1166
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 1167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 1174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 1194
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 1195
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 1196
    iput-object p3, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    .line 1197
    iput p4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    .line 1198
    iput p5, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    .line 1199
    iput-object p6, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 1200
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IBinder;
    .param p2, "x1"    # Landroid/view/InputChannel;
    .param p3, "x2"    # Landroid/media/tv/ITvInputManager;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/util/SparseArray;
    .param p7, "x6"    # Landroid/media/tv/TvInputManager$1;

    .prologue
    .line 1151
    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$Session;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$Session;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    .line 1151
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    return-void
.end method

.method private containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 1403
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    const/4 v2, 0x1

    .line 1407
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private flushPendingEventsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1770
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v4, v6}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(I)V

    .line 1772
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1773
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1774
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1775
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v3, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1776
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1777
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1779
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_0
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1783
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 1784
    .local v0, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    if-nez v0, :cond_0

    .line 1785
    new-instance v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .end local v0    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$1;)V

    .line 1787
    .restart local v0    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :cond_0
    iput-object p1, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1788
    iput-object p2, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 1789
    iput-object p3, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 1790
    iput-object p4, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 1791
    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .prologue
    .line 1795
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->recycle()V

    .line 1796
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1797
    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1804
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 1805
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v1

    .line 1806
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-eqz v0, :cond_0

    .line 1808
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->flushPendingEventsLocked()V

    .line 1809
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->dispose()V

    .line 1810
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 1812
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1813
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 1815
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1817
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1818
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1819
    return-void

    .line 1815
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1818
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 3
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .prologue
    .line 1699
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v2

    .line 1700
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v0

    .line 1701
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1702
    monitor-exit v2

    .line 1707
    :goto_0
    return-void

    .line 1704
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    goto :goto_0

    .line 1704
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    .locals 6
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .prologue
    .line 1710
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_2

    .line 1711
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-nez v3, :cond_0

    .line 1712
    new-instance v3, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 1715
    :cond_0
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1716
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 1717
    .local v2, "seq":I
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1718
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1719
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1720
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1721
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1722
    const/4 v3, -0x1

    .line 1728
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "seq":I
    :goto_0
    return v3

    .line 1725
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v2    # "seq":I
    :cond_1
    const-string v3, "TvInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dropping:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 1566
    if-nez p1, :cond_0

    .line 1567
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "view cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1569
    :cond_0
    if-nez p2, :cond_1

    .line 1570
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "frame cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1572
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1573
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view must be attached to a window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1575
    :cond_2
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 1576
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :goto_0
    return-void

    .line 1580
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, v3, p2, v4}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1656
    if-nez p1, :cond_0

    .line 1657
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1659
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 1660
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1662
    :cond_1
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v3

    .line 1663
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_2

    .line 1664
    const/4 v2, 0x0

    monitor-exit v3

    .line 1676
    :goto_0
    return v2

    .line 1666
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;

    move-result-object v1

    .line 1667
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 1669
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1677
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1673
    .restart local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1674
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1675
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1676
    const/4 v2, -0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1267
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_0
    return-void

    .line 1271
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v6

    .line 1273
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method finishedInputEvent(IZZ)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .prologue
    .line 1733
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v3

    .line 1734
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1735
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1736
    monitor-exit v3

    .line 1751
    :goto_0
    return-void

    .line 1739
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 1740
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1742
    if-eqz p3, :cond_1

    .line 1743
    const-string v2, "TvInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for seesion to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    goto :goto_0

    .line 1746
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 1748
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSelectedTrack(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1448
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1449
    if-nez p1, :cond_0

    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    monitor-exit v1

    .line 1454
    :goto_0
    return-object v0

    .line 1451
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1452
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 1456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1453
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1454
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 1456
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTracks(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1419
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    if-nez p1, :cond_1

    .line 1421
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1422
    monitor-exit v1

    .line 1434
    :goto_0
    return-object v0

    .line 1424
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1425
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 1426
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1427
    monitor-exit v1

    goto :goto_0

    .line 1429
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 1430
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 1431
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    if-nez v2, :cond_4

    .line 1432
    monitor-exit v1

    goto :goto_0

    .line 1434
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 1436
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;
    .locals 7

    .prologue
    .line 1512
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1513
    :try_start_0
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1514
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 1515
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1516
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v3

    .line 1517
    .local v3, "videoWidth":I
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v2

    .line 1518
    .local v2, "videoHeight":I
    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    if-ne v4, v3, :cond_1

    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    if-eq v4, v2, :cond_0

    .line 1519
    :cond_1
    iput v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 1520
    iput v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 1521
    monitor-exit v5

    .line 1527
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v2    # "videoHeight":I
    .end local v3    # "videoWidth":I
    :goto_0
    return-object v1

    .line 1526
    :cond_2
    monitor-exit v5

    .line 1527
    const/4 v1, 0x0

    goto :goto_0

    .line 1526
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 1755
    iput-boolean p2, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 1756
    iget-object v1, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->run()V

    .line 1767
    :goto_0
    return-void

    .line 1763
    :cond_0
    iget-object v1, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1764
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1765
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 1593
    if-nez p1, :cond_0

    .line 1594
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "frame cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1596
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 1597
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_0
    return-void

    .line 1601
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public release()V
    .locals 4

    .prologue
    .line 1206
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1207
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void

    .line 1211
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method removeOverlayView()V
    .locals 4

    .prologue
    .line 1611
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1612
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :goto_0
    return-void

    .line 1616
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 5
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 1626
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1627
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_0
    return-void

    .line 1630
    :cond_0
    if-nez p1, :cond_1

    .line 1631
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unblockedRating cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1634
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager;->requestUnblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 1370
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1371
    if-nez p1, :cond_0

    .line 1372
    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1373
    const-string v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid audio trackId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    monitor-exit v2

    .line 1399
    :goto_0
    return-void

    .line 1376
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1377
    if-eqz p2, :cond_3

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1378
    const-string v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid video trackId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    monitor-exit v2

    goto :goto_0

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1381
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1382
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1383
    const-string v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subtitle trackId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    monitor-exit v2

    goto :goto_0

    .line 1387
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1389
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_4

    .line 1391
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1395
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1542
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1543
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :goto_0
    return-void

    .line 1547
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCaptionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1348
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1349
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    return-void

    .line 1353
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setMain()V
    .locals 4

    .prologue
    .line 1226
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1227
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :goto_0
    return-void

    .line 1231
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setStreamVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 1284
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1285
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_0
    return-void

    .line 1289
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 1290
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volume should be between 0.0f and 1.0f"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1243
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1244
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :goto_0
    return-void

    .line 1249
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tune(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1306
    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1318
    if-nez p1, :cond_0

    .line 1319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "channelUri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1321
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 1322
    const-string v1, "TvInputManager"

    const-string v2, "The session has been already released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1326
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1327
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1328
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1329
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 1330
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 1331
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 1332
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 1333
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 1334
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1334
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method updateTrackSelection(ILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1488
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1489
    if-nez p1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    if-eq p2, v2, :cond_0

    .line 1490
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 1491
    monitor-exit v1

    .line 1501
    :goto_0
    return v0

    .line 1492
    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    if-eq p2, v2, :cond_1

    .line 1493
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 1494
    monitor-exit v1

    goto :goto_0

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1495
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    if-eq p2, v2, :cond_2

    .line 1497
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 1498
    monitor-exit v1

    goto :goto_0

    .line 1500
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1501
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateTracks(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    const/4 v2, 0x1

    .line 1465
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mTrackLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1466
    :try_start_0
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1467
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1468
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 1470
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1471
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1480
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1472
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 1473
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1474
    :cond_2
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1475
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1478
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_3
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
