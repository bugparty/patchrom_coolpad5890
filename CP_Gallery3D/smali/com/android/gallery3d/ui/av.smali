.class public abstract Lcom/android/gallery3d/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ou:I = 0x1

.field public static final ov:I = 0x2


# instance fields
.field protected os:I

.field protected ot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/gallery3d/ui/b;I)I
.end method

.method public abstract as()J
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public r(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/android/gallery3d/ui/av;->os:I

    .line 29
    iput p2, p0, Lcom/android/gallery3d/ui/av;->ot:I

    .line 30
    return-void
.end method
