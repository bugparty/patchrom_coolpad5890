.class public Lcom/android/gallery3d/ui/du;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public DL:I

.field public DM:I

.field public DN:I

.field public DO:I

.field public DP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 409
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput v0, p0, Lcom/android/gallery3d/ui/du;->DL:I

    .line 411
    iput v0, p0, Lcom/android/gallery3d/ui/du;->DM:I

    .line 413
    iput v0, p0, Lcom/android/gallery3d/ui/du;->DN:I

    .line 414
    iput v0, p0, Lcom/android/gallery3d/ui/du;->DO:I

    .line 415
    iput v0, p0, Lcom/android/gallery3d/ui/du;->DP:I

    return-void
.end method

.method static D(II)Lcom/android/gallery3d/ui/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    new-instance v0, Lcom/android/gallery3d/ui/du;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/du;-><init>()V

    .line 419
    iput p0, v0, Lcom/android/gallery3d/ui/du;->DL:I

    .line 420
    iput p1, v0, Lcom/android/gallery3d/ui/du;->DM:I

    .line 421
    return-object v0
.end method

.method static f(III)Lcom/android/gallery3d/ui/du;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    new-instance v0, Lcom/android/gallery3d/ui/du;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/du;-><init>()V

    .line 426
    iput p0, v0, Lcom/android/gallery3d/ui/du;->DN:I

    .line 427
    iput p1, v0, Lcom/android/gallery3d/ui/du;->DO:I

    .line 428
    iput p2, v0, Lcom/android/gallery3d/ui/du;->DP:I

    .line 429
    return-object v0
.end method
