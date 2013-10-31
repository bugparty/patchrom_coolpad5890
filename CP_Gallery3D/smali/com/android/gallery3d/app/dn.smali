.class Lcom/android/gallery3d/app/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public CM:I

.field public CN:I

.field public action:I

.field public dialogTitle:I

.field public enabled:Z

.field public visible:Z


# direct methods
.method public constructor <init>(IZZII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/dn;-><init>(IZZIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(IZZIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/gallery3d/app/dn;->action:I

    .line 64
    iput-boolean p3, p0, Lcom/android/gallery3d/app/dn;->enabled:Z

    .line 65
    iput p4, p0, Lcom/android/gallery3d/app/dn;->CM:I

    .line 66
    iput p5, p0, Lcom/android/gallery3d/app/dn;->dialogTitle:I

    .line 67
    iput p6, p0, Lcom/android/gallery3d/app/dn;->CN:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/dn;->visible:Z

    .line 69
    return-void
.end method
