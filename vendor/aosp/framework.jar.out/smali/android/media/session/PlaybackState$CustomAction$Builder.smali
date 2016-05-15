.class public final Landroid/media/session/PlaybackState$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an action to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a name to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_1
    if-nez p3, :cond_2

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_2
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    .line 712
    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    .line 713
    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    .line 714
    return-void
.end method


# virtual methods
.method public build()Landroid/media/session/PlaybackState$CustomAction;
    .locals 6

    .prologue
    .line 735
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction;

    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 725
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 726
    return-object p0
.end method
