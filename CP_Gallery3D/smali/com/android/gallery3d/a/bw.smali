.class Lcom/android/gallery3d/a/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ac:D

.field public Ad:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bw;->Ac:D

    .line 50
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bw;->Ad:D

    .line 51
    return-void
.end method
