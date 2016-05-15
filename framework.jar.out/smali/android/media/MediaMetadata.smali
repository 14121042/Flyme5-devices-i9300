.class public final Landroid/media/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDITOR_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/media/MediaDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const-string v1, "android.media.metadata.WRITER"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.media.metadata.AUTHOR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.media.metadata.COMPOSER"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    .line 246
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 252
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    .line 266
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 267
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DURATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.WRITER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.YEAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.USER_RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    .line 299
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "android.media.metadata.ART"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const v1, 0x10000001

    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "android.media.metadata.DATE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "android.media.metadata.GENRE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "android.media.metadata.WRITER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 528
    new-instance v0, Landroid/media/MediaMetadata$1;

    invoke-direct {v0}, Landroid/media/MediaMetadata$1;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/media/MediaMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Landroid/media/MediaMetadata$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/MediaMetadata$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaMetadata;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static getKeyFromMetadataEditorKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "editorKey"    # I

    .prologue
    .line 525
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MediaMetadata"

    const-string v4, "Failed to retrieve a key as Bitmap."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 14

    .prologue
    .line 455
    iget-object v12, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    if-eqz v12, :cond_0

    .line 456
    iget-object v12, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    .line 513
    :goto_0
    return-object v12

    .line 459
    :cond_0
    const-string v12, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, "mediaId":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v9, v12, [Ljava/lang/CharSequence;

    .line 462
    .local v9, "text":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 463
    .local v3, "icon":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 466
    .local v4, "iconUri":Landroid/net/Uri;
    const-string v12, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v12}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 467
    .local v1, "displayText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 470
    const/4 v12, 0x0

    aput-object v1, v9, v12

    .line 471
    const/4 v12, 0x1

    const-string v13, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v13}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v9, v12

    .line 472
    const/4 v12, 0x2

    const-string v13, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v13}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v9, v12

    .line 487
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v12, v12

    if-ge v2, v12, :cond_2

    .line 488
    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {p0, v12}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 489
    .local v8, "next":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 490
    move-object v3, v8

    .line 496
    .end local v8    # "next":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v12, v12

    if-ge v2, v12, :cond_3

    .line 497
    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {p0, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, "next":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 499
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 504
    .end local v8    # "next":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 505
    .local v0, "bob":Landroid/media/MediaDescription$Builder;
    invoke-virtual {v0, v7}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 506
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v0, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 507
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v0, v12}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 508
    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-virtual {v0, v12}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 509
    invoke-virtual {v0, v3}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 510
    invoke-virtual {v0, v4}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 511
    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v12

    iput-object v12, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    .line 513
    iget-object v12, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    goto :goto_0

    .line 475
    .end local v0    # "bob":Landroid/media/MediaDescription$Builder;
    .end local v2    # "i":I
    :cond_4
    const/4 v10, 0x0

    .line 476
    .local v10, "textIndex":I
    const/4 v5, 0x0

    .line 477
    .local v5, "keyIndex":I
    :goto_3
    array-length v12, v9

    if-ge v10, v12, :cond_1

    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v12, v12

    if-ge v5, v12, :cond_1

    .line 478
    sget-object v12, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "keyIndex":I
    .local v6, "keyIndex":I
    aget-object v12, v12, v5

    invoke-virtual {p0, v12}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 479
    .local v8, "next":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 481
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "textIndex":I
    .local v11, "textIndex":I
    aput-object v8, v9, v10

    move v10, v11

    .end local v11    # "textIndex":I
    .restart local v10    # "textIndex":I
    :cond_5
    move v5, v6

    .line 483
    .end local v6    # "keyIndex":I
    .restart local v5    # "keyIndex":I
    goto :goto_3

    .line 487
    .end local v5    # "keyIndex":I
    .end local v10    # "textIndex":I
    .restart local v2    # "i":I
    .local v8, "next":Landroid/graphics/Bitmap;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    .local v8, "next":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRating(Ljava/lang/String;)Landroid/media/Rating;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v2, 0x0

    .line 395
    .local v2, "rating":Landroid/media/Rating;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/Rating;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-object v2

    .line 396
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MediaMetadata"

    const-string v4, "Failed to retrieve a key as Rating."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 428
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 429
    return-void
.end method
