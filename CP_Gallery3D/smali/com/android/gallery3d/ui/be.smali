.class public Lcom/android/gallery3d/ui/be;
.super Lcom/android/gallery3d/ui/ew;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GridDrawer"


# instance fields
.field private final iG:Lcom/android/gallery3d/ui/ev;

.field private final mContext:Landroid/content/Context;

.field private pr:Lcom/android/gallery3d/ui/ar;

.field private ps:I

.field private final pt:I

.field private final pu:I

.field private final pv:I

.field private pw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ew;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/gallery3d/ui/be;->pt:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/be;->pu:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/ui/be;->pv:I

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/ui/be;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/gallery3d/ui/be;->iG:Lcom/android/gallery3d/ui/ev;

    .line 41
    return-void
.end method

.method private d(Lcom/android/gallery3d/ui/b;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/be;->pr:Lcom/android/gallery3d/ui/ar;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/be;->ps:I

    if-eq v0, p2, :cond_1

    .line 89
    :cond_0
    iput p2, p0, Lcom/android/gallery3d/ui/be;->ps:I

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/be;->mContext:Landroid/content/Context;

    const v1, 0x7f0d009c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, -0x14

    const/high16 v2, 0x4160

    const/4 v3, -0x1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/ce;->a(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/android/gallery3d/ui/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/be;->pr:Lcom/android/gallery3d/ui/ar;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/be;->pr:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ar;->getWidth()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/ui/be;->pr:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getHeight()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/ui/be;->pr:Lcom/android/gallery3d/ui/ar;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v2, p1, v0, v1}, Lcom/android/gallery3d/ui/ar;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    neg-int v1, p3

    div-int/lit8 v3, v1, 0x2

    .line 55
    neg-int v1, p4

    div-int/lit8 v4, v1, 0x2

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 57
    invoke-static/range {v1 .. v7}, Lcom/android/gallery3d/ui/be;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIIII)V

    .line 59
    div-int/lit8 v1, p5, 0x5a

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 63
    neg-int v1, p4

    div-int/lit8 v5, v1, 0x2

    .line 64
    neg-int v1, p3

    div-int/lit8 v6, v1, 0x2

    move v8, p3

    move v7, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    .line 67
    invoke-virtual/range {v1 .. v8}, Lcom/android/gallery3d/ui/be;->a(Lcom/android/gallery3d/ui/b;IZIIII)V

    .line 68
    move/from16 v0, p10

    invoke-virtual {p0, p1, v7, v8, v0}, Lcom/android/gallery3d/ui/be;->b(Lcom/android/gallery3d/ui/b;III)V

    .line 69
    move/from16 v0, p7

    invoke-virtual {p0, p1, v7, v8, v0}, Lcom/android/gallery3d/ui/be;->a(Lcom/android/gallery3d/ui/b;III)Lcom/android/gallery3d/ui/bc;

    .line 70
    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0, p1, v7, v8}, Lcom/android/gallery3d/ui/be;->d(Lcom/android/gallery3d/ui/b;II)V

    .line 75
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/be;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, p6}, Lcom/android/gallery3d/ui/ev;->o(Lcom/android/gallery3d/a/dd;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p6}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/local/image/0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v3, p0

    move-object v4, p1

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/be;->d(Lcom/android/gallery3d/ui/b;IIII)V

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 77
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/be;->pw:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/be;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, p6}, Lcom/android/gallery3d/ui/ev;->t(Lcom/android/gallery3d/a/dd;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p6}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/local/image/0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v3, p0

    move-object v4, p1

    .line 78
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/be;->e(Lcom/android/gallery3d/ui/b;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    const-string v2, "GridDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v6, v4

    move v5, v3

    move v8, p4

    move v7, p3

    goto :goto_0
.end method

.method public aV()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/be;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/be;->pw:Z

    .line 46
    return-void
.end method
