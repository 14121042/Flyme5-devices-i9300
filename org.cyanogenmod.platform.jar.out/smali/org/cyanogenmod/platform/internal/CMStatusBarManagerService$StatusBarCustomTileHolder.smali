.class final Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
.super Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarCustomTileHolder"
.end annotation


# instance fields
.field private mValue:Lcyanogenmod/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "value"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 672
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;-><init>()V

    .line 673
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lcyanogenmod/app/StatusBarPanelCustomTile;

    .line 674
    return-void
.end method


# virtual methods
.method public get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lcyanogenmod/app/StatusBarPanelCustomTile;

    .line 680
    .local v0, "value":Lcyanogenmod/app/StatusBarPanelCustomTile;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lcyanogenmod/app/StatusBarPanelCustomTile;

    .line 681
    return-object v0
.end method
