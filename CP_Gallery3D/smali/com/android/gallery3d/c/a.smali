.class Lcom/android/gallery3d/c/a;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 62
    return-void
.end method


# virtual methods
.method public aT()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "picasa"

    return-object v0
.end method
