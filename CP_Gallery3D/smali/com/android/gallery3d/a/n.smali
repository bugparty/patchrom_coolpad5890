.class public Lcom/android/gallery3d/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cG:I

.field private static cH:I

.field private static cI:I

.field private static cJ:I

.field private static cK:I


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/a/n;->cG:I

    .line 67
    const/4 v0, 0x6

    sput v0, Lcom/android/gallery3d/a/n;->cH:I

    .line 68
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/a/n;->cI:I

    .line 69
    const/16 v0, 0x20

    sput v0, Lcom/android/gallery3d/a/n;->cJ:I

    .line 70
    const/16 v0, 0x40

    sput v0, Lcom/android/gallery3d/a/n;->cK:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/gallery3d/a/n;->mState:I

    .line 75
    return-void
.end method


# virtual methods
.method public O()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/a/n;->mState:I

    sget v1, Lcom/android/gallery3d/a/n;->cG:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/gallery3d/a/n;->mState:I

    sget v1, Lcom/android/gallery3d/a/n;->cH:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Q()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/gallery3d/a/n;->mState:I

    sget v1, Lcom/android/gallery3d/a/n;->cI:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public R()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/a/n;->mState:I

    sget v1, Lcom/android/gallery3d/a/n;->cJ:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/gallery3d/a/n;->mState:I

    sget v1, Lcom/android/gallery3d/a/n;->cK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
