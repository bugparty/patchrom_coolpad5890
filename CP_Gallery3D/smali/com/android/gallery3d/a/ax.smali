.class public abstract Lcom/android/gallery3d/a/ax;
.super Lcom/android/gallery3d/a/bj;
.source "SourceFile"


# static fields
.field public static final rD:I = 0x1

.field public static final rE:I = 0x2

.field public static final rF:I = 0x5f

.field public static final rG:I = 0x0

.field public static final rH:I = 0x1

.field public static final rI:I = -0x1

.field public static final rJ:Ljava/lang/String; = "image/jpeg"

.field public static final rK:D = 0.0

.field public static final rw:I = 0x320

.field public static final rx:I = 0xc8


# instance fields
.field public rL:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/a/bj;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/a/ax;->rL:Z

    .line 51
    return-void
.end method


# virtual methods
.method public a([D)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 66
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 67
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 68
    return-void
.end method

.method public abstract al()Lcom/android/gallery3d/b/ab;
.end method

.method public dA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public dC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public dD()[Lcom/android/gallery3d/a/c;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public dE()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v0

    return v0
.end method

.method public dx()J
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dy()J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract r(I)Lcom/android/gallery3d/b/ab;
.end method
