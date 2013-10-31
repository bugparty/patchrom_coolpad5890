.class Lcom/android/gallery3d/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cE:Ljava/lang/String;

.field public cF:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/gallery3d/a/m;->cF:I

    .line 457
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/m;->cE:Ljava/lang/String;

    .line 458
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 467
    instance-of v1, p1, Lcom/android/gallery3d/a/m;

    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    check-cast p1, Lcom/android/gallery3d/a/m;

    .line 469
    iget v1, p0, Lcom/android/gallery3d/a/m;->cF:I

    iget v2, p1, Lcom/android/gallery3d/a/m;->cF:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/gallery3d/a/m;->cF:I

    return v0
.end method
