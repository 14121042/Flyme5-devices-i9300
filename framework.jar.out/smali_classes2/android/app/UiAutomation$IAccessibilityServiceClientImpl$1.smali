.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 924
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 925
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # setter for: Landroid/app/UiAutomation;->mConnectionId:I
    invoke-static {v0, p1}, Landroid/app/UiAutomation;->access$102(Landroid/app/UiAutomation;I)I

    .line 926
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 927
    monitor-exit v1

    .line 928
    return-void

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 948
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 949
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    # setter for: Landroid/app/UiAutomation;->mLastEventTimeMillis:J
    invoke-static {v1, v4, v5}, Landroid/app/UiAutomation;->access$202(Landroid/app/UiAutomation;J)J

    .line 950
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z
    invoke-static {v1}, Landroid/app/UiAutomation;->access$300(Landroid/app/UiAutomation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/app/UiAutomation;->access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/app/UiAutomation;->access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    # getter for: Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;
    invoke-static {v1}, Landroid/app/UiAutomation;->access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    move-result-object v0

    .line 957
    .local v0, "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    if-eqz v0, :cond_1

    .line 958
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/UiAutomation$OnAccessibilityEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 960
    :cond_1
    return-void

    .line 954
    .end local v0    # "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 933
    return-void
.end method
