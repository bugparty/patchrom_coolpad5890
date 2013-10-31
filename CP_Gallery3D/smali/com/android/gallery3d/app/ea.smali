.class Lcom/android/gallery3d/app/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public FG:I

.field public FH:Landroid/graphics/BitmapRegionDecoder;

.field public FI:Landroid/graphics/Bitmap;

.field public FJ:Lcom/android/gallery3d/b/l;

.field public FK:Lcom/android/gallery3d/b/l;

.field public FL:Z

.field public rotation:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 808
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput v0, p0, Lcom/android/gallery3d/app/ea;->FG:I

    .line 815
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ea;->FL:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/v;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/android/gallery3d/app/ea;-><init>()V

    return-void
.end method
